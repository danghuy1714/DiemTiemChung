import styled from "styled-components";
import MenuIcon from "@mui/icons-material/Menu";
const StyledHeader = styled.div`
  background: white;
  height: 60px;
  display: flex;
  align-items: center;
  padding: 0 20px;
`;
const Header = () => {
  return (
    <StyledHeader>
      <div className="menu-icon-container">
        <MenuIcon />
      </div>
    </StyledHeader>
  );
};

export default Header;
