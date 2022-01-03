using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreCoin : MonoBehaviour
{
    private int score;
    public Text scoretext;

    private void Start()
    {
        scoretext.GetComponent<Text>().text = score.ToString("F0");
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Coin")
        {
            score += 1;
            scoretext.text = score.ToString("F0");
            Destroy(other.gameObject);
        }
    }
}
