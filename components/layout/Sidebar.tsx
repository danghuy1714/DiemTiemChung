import styled from "styled-components";
import SidebarItem from "../sidebar/SidebarItem";

const StyledSidebar = styled.div`
  width: 300px;
  height: 100%;
  padding: 28px 20px;
  background: #0d74f5;
  .logo-container {
    font-size: 24px;
    line-height: 30px;
    color: white;
    text-align: center;
    margin-bottom: 40px;
  }
`;
const Sidebar = () => {
  return (
    <StyledSidebar>
      <div className="logo-container">Tiêm Chủng DĐHHD</div>
      <SidebarItem isActive={false} />
      <SidebarItem isActive={true} />
      <SidebarItem isActive={false} />
      <SidebarItem isActive={false} />
      <SidebarItem isActive={false} />
    </StyledSidebar>
  );
};

export default Sidebar;
