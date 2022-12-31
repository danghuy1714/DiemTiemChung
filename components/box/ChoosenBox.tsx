import styled from "styled-components";
import LocalHospitalIcon from "@mui/icons-material/LocalHospital";
import AccessibilityNewIcon from "@mui/icons-material/AccessibilityNew";
import { useRouter } from "next/router";
import { ReactNode } from "react";
const ChoosenBoxContainer = styled.div`
  width: 260px;
  height: 260px;
  border: 1px solid #2a388f;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 40px;
  background: #dbdbdb;
  flex-direction: column;
  cursor: pointer;
  .icon-container {
  }
  .title-container {
    font-size: 20px;
    line-height: 28px;
    font-weight: 600;
  }
`;
const ChoosenBox = ({
  href = "/",
  title = "",
  icon,
}: {
  href: string;
  title: string;
  icon: ReactNode;
}) => {
  const router = useRouter();
  return (
    <ChoosenBoxContainer
      onClick={() => {
        router.push(href);
      }}
    >
      <div className="icon-container">
        {/* <LocalHospitalIcon style={{ width: "60px", height: "60px" }} /> */}
        {icon}
        {/* <AccessibilityNewIcon style={{ width: "60px", height: "60px" }} /> */}
      </div>
      <div className="title-container">{title}</div>
    </ChoosenBoxContainer>
  );
};

export default ChoosenBox;
