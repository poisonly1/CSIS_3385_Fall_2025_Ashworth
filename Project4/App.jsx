import React from 'react';
import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import * as yup from 'yup';

/*
  📚 Docs:
  React Hook Form - https://react-hook-form.com/get-started
  Yup Schema Validation - https://github.com/jquense/yup
*/


const schema = yup.object().shape({
    fullName: yup.string().min(5).required(),
    coverLetter: yup.string().min(100).max(500).required(),
    linkedin: yup.string().url().matches(/^https:\/\/(www\.)?linkedin\.com\/.*$/, "Must be a LinkedIn profile URL"),
    role: yup.string().oneOf(["field-agent", "analyst", "strategist", "engineer", "medic", "other"]).required(),
    alias: yup.string().required(),
    species: yup.string().oneOf(["human", "mutant", "alien", "android", "other"]).required(),
    powerLevel: yup.string().oneOf(["street", "enhanced", "cosmic", "reality"]).required(),
    weapon: yup.string().required(),
    affiliations: yup.array().min(1),
    nemesis: yup.string().nullable(),
    surveillance: yup.boolean()
});

function App() {
    const {
        register,
        handleSubmit,
        formState: { errors },
    } = useForm({
        resolver: yupResolver(schema),
    });

    const onSubmit = (data) => {
        console.log('Form Data:', data);
    };

    return (
        <div style={{
            fontFamily: 'Segoe UI, sans-serif',
            backgroundColor: '#1f1d1a',
            color: '#e6e6e6',
            padding: '2rem'
        }}>
            <h1 style={{ color: '#cfa546', textShadow: '1px 1px #000' }}>
                New Avengers Job Application
            </h1>

            <form onSubmit={handleSubmit(onSubmit)} style={{
                backgroundColor: '#2a2a2a',
                border: '1px solid #5d5c5c',
                padding: '2rem',
                borderRadius: '8px',
                maxWidth: '700px',
                margin: 'auto',
                boxShadow: '0 0 10px #000'
            }}>

                <label>Full Name:</label>
                <input type="text" {...register('fullName')} />

                <label>Cover Letter:</label>
                <textarea rows="4" {...register('coverLetter')} />

                <label>LinkedIn Profile:</label>
                <input type="url" {...register('linkedin')} />

                <label>Desired Role/Title:</label>
                <select {...register('role')}>
                    <option value="">--Select Role--</option>
                    <option value="field-agent">Field Agent</option>
                    <option value="analyst">Analyst</option>
                    <option value="strategist">Strategist</option>
                    <option value="engineer">Engineer</option>
                    <option value="medic">Medic</option>
                    <option value="other">Other</option>
                </select>

                <label>Alias / Superhero Name:</label>
                <input type="text" {...register('alias')} />

                <label>Species or Origin:</label>
                <select {...register('species')}>
                    <option value="">--Select Origin--</option>
                    <option value="human">Human</option>
                    <option value="mutant">Mutant</option>
                    <option value="alien">Alien</option>
                    <option value="android">Android</option>
                    <option value="other">Other</option>
                </select>

                <label>Power Level:</label>
                <select {...register('powerLevel')}>
                    <option value="">--Select Power Level--</option>
                    <option value="street">Street-Level</option>
                    <option value="enhanced">Enhanced</option>
                    <option value="cosmic">Cosmic</option>
                    <option value="reality">Reality-Bending</option>
                </select>

                <label>Preferred Weapon or Tool:</label>
                <select {...register('weapon')}>
                    <option value="">--Select Weapon--</option>
                    <option value="shield">Vibranium Shield</option>
                    <option value="hammer">Mjolnir</option>
                    <option value="repulsor">Repulsor Gloves</option>
                    <option value="arrows">Trick Arrows</option>
                    <option value="tech">Nanotech Suit</option>
                </select>

                <label>Past Affiliations:</label>
                <select multiple {...register('affiliations')}>
                    <option value="x-men">X-Men</option>
                    <option value="shield">S.H.I.E.L.D.</option>
                    <option value="guardians">Guardians of the Galaxy</option>
                    <option value="avengers">Avengers</option>
                    <option value="none">None</option>
                </select>

                <label>Nemesis (if any):</label>
                <input type="text" {...register('nemesis')} />

                <label>
                    <input type="checkbox" {...register('surveillance')} />
                    Are you currently under surveillance by any known agencies?
                </label>

                <br /><br />
                <button type="submit" style={{
                    backgroundColor: '#b3211b',
                    color: '#fff',
                    padding: '0.75rem 1.5rem',
                    fontSize: '1rem',
                    border: 'none',
                    borderRadius: '4px',
                    cursor: 'pointer'
                }}>
                    Submit Application
                </button>
            </form>
        </div>
    );
}

export default App;
