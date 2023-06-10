import React, { useContext } from "react";
import "./styles.css";
import axios from "axios";
import { Form, Formik, Field, ErrorMessage } from "formik";
import * as Yup from "yup";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
// import { AuthProvider } from "../../context/AuthProvider";
import AuthContext from "../../context/AuthProvider";

function Login() {
  // const [formValue, setFormValue] = useState(initialState);
  // const [formValue, setFormValue] = useState(initialState);
  const { setAuth } = useContext(AuthContext);
  const navigate = useNavigate();
  const initialValues = {
    email: "",
    password: "",
  };

  const handleSubmit = async (values, props) => {
  
    const axiosConfig = {
      headers: {
        Authorization: "Bearer ",
        "Content-Type": "application/json",
      },
    };
    console.log("values: ");
    console.log(values);

    const response = axios
      .post("http://localhost:8000/api/auth/login", values, axiosConfig) // no try/catch here
      .then((response) => {
        console.log(response);
        toast.success("login   Successfully");
        navigate("/admindashboard");
        console.log(props);
        const accessToken = response?.values?.accessToken;
        setAuth({ values, accessToken });
      })
      .catch((err) => {
        if (!err?.response) {
          toast.error("something went wrong");

          console.log(err.response);
        } else if (err.reponse?.status === 400) {
          toast.error("Missing username or password");
        } else if (err.reponse?.status === 401) {
          toast.error("UnAuthorized");
        } else {
          toast.error("Login Fail");
        }
      });

    // actions.setSubmitting(false);

    console.log(props);
    const accessToken = response?.data?.accessToken;
    setAuth({ values, accessToken });
  };
  const validationSchema = Yup.object().shape({
    email: Yup.string()
      .email("please enter a valid email")
      .required("required"),
    password: Yup.string()
      .min(8, "password minimum length should be 8")
      .required("required"),
  });

  return (
    <div className="log_reg_form  loginss">
      <div className="signin-hidden-sbar">
        <div className="hsidebar-header">
          <h3 className="title fw-bold text-center">Sign-In</h3>
        </div>
        <div className="hsidebar-content">
          <div className=" sidebar_area">
            <div className="login_form">
              <Formik
                initialValues={initialValues}
                onSubmit={handleSubmit}
                validationSchema={validationSchema}
              >
                {(props) => (
                  <Form>
                    <div className="mb-2 mr-sm-2">
                      <label className="form-label mt-3 mb-3">
                        Email address:
                      </label>
                      <Field
                        type="email"
                        className="form-control"
                        placeholder="Ateba Ryan"
                        name="email"
                        value={props.values.email}
                      />
                      <p className="text-danger">
                        {<ErrorMessage name="email" />}
                      </p>
                    </div>
                    <div className="form-group mb-3">
                      <label className="form-label">Password:</label>
                      <Field
                        type="password"
                        className="form-control"
                        placeholder="Password"
                        name="password"
                        value={props.values.password}
                      />
                      <p className="text-danger">
                        {<ErrorMessage name="password" />}
                      </p>
                    </div>
                    {/* <div className="custom-control custom-checkbox">
                  <Field
                    type="checkbox"
                    className="custom-control-Field"
                    id="exampleCheck3"
                  />
                  <label className="custom-control-label" for="exampleCheck3">
                    Remember me
                  </label>
                  {/* <a className="btn-fpswd float-end" href="#">
                    Lost your password?
                  </a> 
                </div> */}
                    <button type="submit" className="btn btn-log btn-thm mt20">
                      Login
                    </button>
                    <p className="text-center mb-1 mt-2">
                      Don't have an account?
                      <a
                        className="fw-bold signup-filter-btn ms-1 "
                        href="/register"
                      >
                        Create account
                      </a>
                    </p>
                  </Form>
                )}
              </Formik>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Login;
