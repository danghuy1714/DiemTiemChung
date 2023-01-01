import styled from "styled-components";
import MedicineSearchItem from "../searchitem/MedicineSearchItem";

const StyledSearchBox = styled.div`
  width: 100%;

  height: 100%;
  .input-container {
    margin-bottom: 20px;
    .search-input {
      padding: 16px;
      width: 100%;
    }
  }
`;
const SearchBox = () => {
  return (
    <StyledSearchBox>
      <div className="input-container">
        <input
          type="text"
          className="search-input"
          placeholder="Tìm kiếm tên thuốc"
        />
      </div>
      <div className="search-item-container">
        <MedicineSearchItem />
        <MedicineSearchItem />
        <MedicineSearchItem />
        <MedicineSearchItem />
        <MedicineSearchItem />
        <MedicineSearchItem />
        <MedicineSearchItem />
        <MedicineSearchItem />
      </div>
    </StyledSearchBox>
  );
};

export default SearchBox;
