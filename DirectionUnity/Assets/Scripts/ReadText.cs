using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using CognitiveServicesTTS;
using System;
using System.Threading.Tasks;

public class ReadText : MonoBehaviour
{
    public SpeechManager speech;
    public string msg;
    public string msgrepeat;

    /// <summary>
    /// Speech synthesis can be called via REST API or Speech Service SDK plugin for Unity
    /// </summary>
    public async void SpeechPlayback()
    {
        if (speech.isReady)
        {

            speech.msgrepeat = msgrepeat;
            // Required to insure non-blocking code in the main Unity UI thread.
            await Task.Run(() => speech.SpeakWithSDKPlugin(msg));
            
        }
        else
        {
            Debug.Log("SpeechManager is not ready. Wait until authentication has completed.");
        }
    }

    //Upon collision with another GameObject, this GameObject will reverse direction
    private void OnTriggerEnter(Collider other)
    {
        SpeechPlayback();
    }
}