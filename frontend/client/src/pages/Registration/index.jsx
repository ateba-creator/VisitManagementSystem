import React from "react";
import { Form, Formik, Field, ErrorMessage } from "formik";
import * as Yup from "yup";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { toast } from "react-toastify";
import "./styles.css";

function Register() {
  const navigate = useNavigate();
  const initialValues = {
    firstName: "",
    lastName:"",
    email: "",
    password: "",
    confirmPassword:"",
  };

  const handleSubmit = (values, props) => {
    // console.log(values);
    
    const axiosConfig = {
      headers: {
        Authorization: "Bearer ",
        "Content-Type": "application/json",
      },
    };

    axios
      .post("http://localhost:8000/api/auth/register", values, axiosConfig) // no try/catch here
      .then((response) => {
        console.log(response);
        toast.success("Registered   Successfully");
        navigate("/");
      })
      .catch((error) => {
        console.log(error.response);
        toast.error("something  error");
      });
    console.log(values);
    // actions.setSubmitting(false);

    console.log(props);
    // actions.setSubmitting(false);

    // console.log(props);
  };
  const validationSchema = Yup.object().shape({
    email: Yup.string()
      .email("please enter a valid email")
      .required("required"),
    password: Yup.string()
      .min(8, "password minimum length should be 8")
      .required("required"),
    confirmPassword:Yup.string().oneOf([Yup.ref("password")],"passwords don't match").required("required")
  });

  return (
    <div className="loginst log_reg_form ">
      <div className="signup-hidden-sbar">
        <div className="hsidebar-header">
          {/* <div className="sidebar-close-icon">
            <span className="flaticon-close"></span>
          </div> */}
          <h4 className="title fw-bold text-center">Create Your Account</h4>
        </div>
        <div className="hsidebar-content">
          <div className="sidebar_area">
            <div className="sign_up_form">
              <Formik
                initialValues={initialValues}
                onSubmit={handleSubmit}
                validationSchema={validationSchema}
              >
                {(props) => (
                  <Form>
                    <div className="row">
                      <div className="col-12 col-lg-4">
                        <div className="form-group">
                          <label className="form-label">First Name:</label>
                          <Field
                            type="text"
                            className="form-control"
                            placeholder="Ateba Otabela"
                            name="firstName"
                            value={props.values.firstName}
                            onChange={props.handleChange}
                          />
                          <p className="text-danger">
                            {<ErrorMessage name="firstName" />}
                          </p>
                        </div>
                    </div>

                      <div className="col-12 col-lg-4">
                        <div className="form-group">
                          <label className="form-label">Last Name:</label>
                          <Field
                            type="text"
                            className="form-control"
                            placeholder="Hermann Ryan"
                            name="lastName"
                            value={props.values.lastName}
                            onChange={props.handleChange}
                          />
                          <p className="text-danger">
                            {<ErrorMessage name="lastName" />}
                          </p>
                        </div>
                      </div>

                      <div className="col-12 col-lg-4">
                        <div className="form-group">
                          <label className="form-label">Your Email:</label>
                          <Field
                            type="email"
                            className="form-control"
                            placeholder="creativelayers088@gmail.com"
                            name="email"
                            value={props.values.email}
                            onChange={props.handleChange}
                          />
                          <p className="text-danger">
                            {<ErrorMessage name="email" />}
                          </p>
                        </div>
                      </div>

                    </div>


                    <div className="row">
                      <div className="col-12 col-lg-6">
                        <div className="form-group mb20">
                          <label className="form-label">Password:</label>
                          <Field
                            type="password"
                            className="form-control"
                            placeholder="******************"
                            name="password"
                            value={props.values.password}
                            onChange={props.handleChange}
                          />
                          <p className="text-danger">
                            {<ErrorMessage name="password" />}
                          </p>
                        </div>
                      </div>
                      <div className="col-12 col-lg-6">
                        <div className="form-group mb20">
                          <label className="form-label">Confirm Password:</label>
                          <Field
                            type="password"
                            className="form-control"
                            placeholder="******************"
                            name="confirmPassword"
                            value={props.values.confirmPassword}
                            onChange={props.handleChange}
                          />
                          <p className="text-danger">
                            {<ErrorMessage name="confirmPassword" />}
                          </p>
                        </div>
                      </div>
                    </div>
                    
                    <button type="submit" className="btn btn-signup btn-thm">
                      Create Account
                    </button>
                    <p className="text-center mb25 mt10">
                      Already have an account?
                      <a href="/" className="fw-bold">
                        Sign in
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

export default Register;
