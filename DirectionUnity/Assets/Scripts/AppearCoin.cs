using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AppearCoin : MonoBehaviour
{
    public GameObject nextCoin;

    // Start is called before the first frame update
    void Start()
    {
        nextCoin.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {
       
        nextCoin.SetActive(true);
      
    }
}
