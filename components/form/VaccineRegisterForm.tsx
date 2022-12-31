import axios from "axios";
import { useEffect, useState } from "react";
import * as yup from "yup";
import styled from "styled-components";
import FormInput from "./FormInput";
import FormRow from "./FormRow";
import { FieldValues, SubmitHandler, useForm } from "react-hook-form";
import { yupResolver } from "@hookform/resolvers/yup";
const schema = yup.object({});
const StyledVaccineRegisterContainer = styled.div`
  .reg-form {
    width: 100%;
    color: black;
    .submit-btn {
      margin-top: 40px;
      background: #1f28af;
      color: white;
      padding: 12px 20px;
      border: 1px solid #dcdfe6;
      border-radius: 6px;
      cursor: pointer;
    }
  }
`;

const VaccineRegisterForm = () => {
  const {
    handleSubmit,
    control,
    formState: { errors, isValid, isSubmitting },
  } = useForm({
    resolver: yupResolver(schema),
    mode: "onChange",
  });
  const [provincesList, setProvincesList] = useState<any[]>([]);
  const [selectProvince, setSelectProvince] = useState();
  const [districtsList, setDistrictsList] = useState<any[]>([]);
  const [selectDistrict, setSelectDistrict] = useState();
  const [wardsList, setWardsList] = useState<any[]>([]);
  const [selectWard, setSelectWard] = useState();
  const [dateOfBirth, setDateOfBirth] = useState();
  const [gender, setGender] = useState("");
  useEffect(() => {
    const getProvinces = async () => {
      try {
        await axios
          .get("https://provinces.open-api.vn/api/")
          .then((response) => {
            setProvincesList(response.data);
          });
      } catch (error) {}
    };
    getProvinces();
  }, []);
  useEffect(() => {
    const getDistricts = async () => {
      try {
        await axios
          .get(`https://provinces.open-api.vn/api/p/${selectProvince.code}`, {
            params: {
              depth: 2,
            },
          })
          .then((response) => {
            setDistrictsList(response.data.districts);
          });
      } catch (error) {}
    };
    if (selectProvince?.code) {
      getDistricts();
    }
  }, [selectProvince]);
  useEffect(() => {
    const getWards = async () => {
      try {
        await axios
          .get(`https://provinces.open-api.vn/api/d/${selectDistrict.code}`, {
            params: {
              depth: 2,
            },
          })
          .then((response) => {
            setWardsList(response.data.wards);
          });
      } catch (error) {}
    };
    if (selectDistrict?.code) {
      getWards();
    }
  }, [selectDistrict]);
  const onSubmitHandler = async (data: any) => {
    console.log({
      ...data,
      dob: dateOfBirth,
      province: selectProvince?.name,
      district: selectDistrict?.name,
      ward: selectWard?.name,
      gender,
    });
  };
  return (
    <StyledVaccineRegisterContainer>
      <form
        onSubmit={handleSubmit(onSubmitHandler as SubmitHandler<FieldValues>)}
        className="reg-form"
      >
        <FormRow numberOfCol={2}>
          <FormInput
            control={control}
            inputType="text"
            label="Họ tên người tiêm"
            id="name"
          />
          <FormInput
            control={control}
            label="Ngày sinh người tiêm"
            id="dob"
            inputType="date"
            placeholder="Ngày/Tháng/Năm"
            setStartDate={setDateOfBirth}
            startDate={dateOfBirth}
          />
        </FormRow>
        <FormRow numberOfCol={2}>
          <FormInput
            control={control}
            inputType="radio"
            id="gender"
            radioLabels={["Nam", "Nữ"]}
            radioIds={["nam", "nu"]}
            label="Giới tính"
            setOuterVal={setGender}
          />
          <FormInput
            control={control}
            inputType="text"
            label="Số điện thoại người tiêm"
            id="phoneNumber"
          />
        </FormRow>
        <FormRow numberOfCol={3}>
          <FormInput
            control={control}
            id="province"
            inputType="dropdown"
            label="Tỉnh thành"
            list={provincesList}
            setOuterVal={setSelectProvince}
          />
          <FormInput
            control={control}
            id="district"
            inputType="dropdown"
            label="Quận huyện"
            list={districtsList}
            setOuterVal={setSelectDistrict}
          />
          <FormInput
            control={control}
            id="ward"
            inputType="dropdown"
            label="Phường xã"
            list={wardsList}
            setOuterVal={setSelectWard}
          />
        </FormRow>
        <FormRow numberOfCol={1}>
          <FormInput
            control={control}
            label="Số nhà, tên đường"
            id="address"
            inputType="text"
          />
        </FormRow>
        <FormRow numberOfCol={2}>
          <FormInput
            control={control}
            label="Họ và tên người liên hệ"
            id="relationName"
            inputType="text"
          />
          <FormInput
            control={control}
            label="Số điện thoại người liên hệ"
            id="relationPhoneNumber"
            inputType="text"
          />
        </FormRow>
        <button type="submit" className="submit-btn">
          Hoàn thành đăng ký
        </button>
      </form>
    </StyledVaccineRegisterContainer>
  );
};

export default VaccineRegisterForm;
