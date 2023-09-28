import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

function StudentIndex(props){
    const [students, setStudent] = useState([]);

    useEffect(() => {
        const fetchStudents = async () => {
            const data = await fetch("../data.json", {
                headers: {
                    'Content-Type': "application/json",
                    "Accept": "application/json"
                }
            });

            if (data.ok){
                const parseData = await data.json();
                setStudent(parseData);
            } else {
                alert("something went wrong in student index page");
            }
        }

        fetchStudents();
    }, [])

    return (
        <>
            <ul>
                {students.map((student) => {
                    return(
                        <li key={student.name}>
                            <Link to={`/students/${student.name}`}>{student.name}</Link>
                        </li>
                    )
                })}
            </ul>
        </>
    )
}

export default StudentIndex;