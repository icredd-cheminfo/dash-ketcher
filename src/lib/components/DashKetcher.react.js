import React, { useEffect, useState } from 'react';
import PropTypes from 'prop-types';

/**
 * DashKetcher is a Function Component to use Ketcher drawer with Dash.
 * It outputs the current drawn structure as a SMILES string,
 * and can also draw the structure corresponding to a provided
 * SMILES string.
 */

const DashKetcher = (props) => {
    const {
        id,
        editor_url,
        editor_id,
        editor_height = "600px",
        editor_width = "100%",
        output_SMILES,
        trigger_getSmiles = 0,
        input_SMILES,
        setProps
    } = props;

    const getSmiles = async () => {
        const iframe = document.getElementById(id);
        if (iframe !== null && iframe.contentWindow?.ketcher) {
            const smiles = await iframe.contentWindow.ketcher.getSmiles();
            setProps({ output_SMILES: smiles });
        }
    };

    const drawSmiles = async (e) => {
        const iframe = document.getElementById(id);
        if (e && iframe !== null && iframe.contentWindow?.ketcher) {
            await iframe.contentWindow.ketcher.setMolecule(e);
        }
    };

    useEffect(() => {
        if (trigger_getSmiles !== 0) {
            getSmiles();
        }
    }, [trigger_getSmiles]);

    useEffect(() => {
        if (input_SMILES !== undefined) {
            drawSmiles(input_SMILES);
        }
    }, [input_SMILES]);

    return (
        <div>
            <iframe id={id} src={editor_url} title={editor_id}
             height={editor_height} width={editor_width} />
        </div>
    );
}

DashKetcher.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string.isRequired,

    /**
     * The URL of sketcher html webpage.
     */
    editor_url: PropTypes.string.isRequired,

    /**
     * The title of the Ketch iframe.
     */
    editor_id: PropTypes.string.isRequired,

    /**
     * The height of the module. Unit is required (eg: %, px)
     */
    editor_height: PropTypes.string,

    /**
     * The width of the module. Unit is required (eg: %, px)
     */
    editor_width: PropTypes.string,

    /**
     * The computed SMILES string by Ketcher - output only.
     */
    output_SMILES: PropTypes.string,

    /**
     * When this prop changes, the component runs getSmiles
     * and updates output_SMILES.
     */
    trigger_getSmiles: PropTypes.number,

    /**
     * The SMILES string for which Ketcher should draw the structure.
     */
    input_SMILES: PropTypes.string,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func,
};

export default DashKetcher;
