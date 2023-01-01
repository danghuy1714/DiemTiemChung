import styled from "styled-components";

const StyledMedicineContainer = styled.div`
  width: 100%;
  display: flex;
  align-items: center;
  margin-bottom: 12px;
  .medicine-image-container {
    width: 200px;
    margin-right: 16px;
    img {
      width: 100%;
      object-fit: cover;
    }
  }
  .medicine-information-container {
    flex: 1;
    .medicine-title {
      color: #2a388f;
      font-size: 16px;
      font-weight: 600;
      margin: 12px 0;
    }
    .medicine-description {
      color: #6d6e70;
    }
  }
`;
const MedicineSearchItem = () => {
  return (
    <StyledMedicineContainer>
      <div className="medicine-image-container">
        <img src="/static/anhthuoc.jpg" alt="" />
      </div>
      <div className="medicine-information-container">
        <div className="medicine-title">
          Vắc xin PRIORIX phòng bệnh Sởi – Quai bị – Rubella
        </div>
        <div className="medicine-description">
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repudiandae
          esse in exercitationem officiis beatae consectetur? Dignissimos
          aliquid libero, optio totam saepe accusantium! Ad eaque alias dicta
          saepe perferendis minus quos.
        </div>
      </div>
    </StyledMedicineContainer>
  );
};

export default MedicineSearchItem;
