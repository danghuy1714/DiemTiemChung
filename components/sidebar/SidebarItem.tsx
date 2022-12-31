import styled from "styled-components";
import HomeIcon from "@mui/icons-material/Home";
interface ISidebarProps {
  isActive: boolean;
}
const StyledSidebarItem = styled.div<ISidebarProps>`
  display: flex;
  width: 100%;
  align-items: center;
  padding: 20px;
  color: ${(props) => (props.isActive ? "#0d74f5" : "white")};
  background: ${(props) => (props.isActive ? "white" : "#0d74f5")};
  border-radius: 8px;
  cursor: pointer;
  .icon {
    margin-right: 12px;
    font-size: 18px;
  }
  .sidebar-item {
    flex: 1;
    &_title {
      font-size: 18px;
      line-height: 26px;
    }
  }
`;
const SidebarItem = ({ isActive = false }: { isActive: boolean }) => {
  return (
    <StyledSidebarItem isActive={isActive}>
      <div className="icon">
        <HomeIcon />
      </div>
      <div className="sidebar-item">
        <div className="sidebar-item_title">Trang Chủ</div>
      </div>
    </StyledSidebarItem>
  );
};

export default SidebarItem;
