using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pathupdater : MonoBehaviour
{
    public GameObject lastPath;
    public GameObject nextPath;
    // Start is called before the first frame update
    private void OnTriggerEnter(Collider other)
    {

        nextPath.SetActive(true);
        lastPath.SetActive(false);

    }
}
