import { BrowserRouter, Routes, Route } from "react-router-dom";
import "./App.css";
import Login from "./pages/LoginPage";
import Register from "./pages/Registration";
import Dashboard from "./pages/Dashboard";
import VisitsPage from "./pages/VisitsPage";
import SettingsPage from "./pages/Settings";
import VisitorsPage from "./pages/VisitorsPage";
import AddVisitor from "./pages/AddVisitor";
import AddVisits from "./pages/AddVisits";
import { ToastContainer } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import EditVisitPage from "./pages/EditVisitPage";
import EditVisitorPage from "./pages/EditVisitorPage";

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <ToastContainer />
        <Routes>
          <Route exact path="/" element={<Login />} />
          <Route exact path="/register" element={<Register />} />
          <Route exact path="/admindashboard" element={<Dashboard />} />
          <Route exact path="/visits" element={<VisitsPage />} />
          <Route exact path="/settings" element={<SettingsPage />} />
          <Route exact path="/visitors" element={<VisitorsPage />} />
          <Route exact path="/addvisitor" element={<AddVisitor />} />
          <Route exact path="/addvisits" element={<AddVisits />} />
          <Route exact path="/editvisit/:id" element={<EditVisitPage />} />
          <Route exact path="/editvisitor/:id" element={<EditVisitorPage />} />

          {/* <Route exact path="*" element={<NotFound />} /> */}
        </Routes>
      </div>
    </BrowserRouter>
  );
}

export default App;
