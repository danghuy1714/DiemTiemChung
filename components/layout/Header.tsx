import styled from "styled-components";
import MenuIcon from "@mui/icons-material/Menu";
const StyledHeader = styled.div`
  background: white;
  height: 60px;
  display: flex;
  align-items: center;
  padding: 0 20px;
  overflow: hidden;
  color: #282423;
  .menu-icon-container {
    padding: 8px;
    cursor: pointer;
  }
  .header-title {
    margin-left: 36px;
    font-size: 20px;
    line-height: 32px;
    font-weight: 500;
  }
`;
const Header = () => {
  return (
    <StyledHeader>
      <div className="menu-icon-container">
        <MenuIcon />
      </div>
      <div className="header-title">Hệ thống quản trị thông tin tiêm chủng</div>
    </StyledHeader>
  );
};

export default Header;
