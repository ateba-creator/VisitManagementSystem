import { Chart as ChartJS, ArcElement, Tooltip, Legend } from "chart.js";
import { useState } from "react";
import { Doughnut } from "react-chartjs-2";

const HorizontalChart=()=>{
    const [data, setData] = useState({

    labels:['Sunday','Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
        datasets: [
            {
                label: 'Dataset 1',
              data:[],
              borderColor: 'rgb(255, 99, 132)',
              backgroundColor: 'rgba(25, 90, 13, 0.5)',
            },
            {
              label: 'Dataset 2',
              data:[],
              borderColor: 'rgb(53, 162, 235)',
              backgroundColor: 'rgba(53, 162, 235, 0.5)',
            },
          ],
    });

    return(<div>Hello World</div>)
}

export default HorizontalChart;