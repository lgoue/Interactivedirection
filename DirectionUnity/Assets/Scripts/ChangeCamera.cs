using System.Collections;
using UnityEngine;
using System.Threading;
using System.Threading.Tasks;

public class ChangeCamera : MonoBehaviour
{
    public Camera MainCamera;
    public Camera MapCamera; 
    public Camera BlackCamera;
    public GameObject pathmap;

    private int countdown = 0;
    private string toenable = "main";

    private void Start()
    {
        MainCamera.enabled = true;
        MapCamera.enabled = false;
        BlackCamera.enabled = false;
        pathmap.SetActive(false);
        (this.GetComponent("FirstPersonController") as MonoBehaviour).enabled = true;
    }

    private void Update()
    {
        if (countdown==-1 & Input.GetKeyDown(KeyCode.C))
        {
            if(MainCamera.enabled == true)
            {
                (this.GetComponent("FirstPersonController") as MonoBehaviour).enabled = false;
                MainCamera.enabled = false;
                BlackCamera.enabled = true;
                countdown = 3000;
                toenable = "map";
                
            }
            else
            {
                MapCamera.enabled = false;
                pathmap.SetActive(false);
                BlackCamera.enabled = true;
                countdown = 5000;
                toenable = "main";
                
                
            }
            
        }
        else if (countdown > 0)
        {
            Task.Delay(countdown).Wait();
            countdown = 0;
        }
        else if (countdown == 0)
        {
            if (toenable == "map")
            {
                BlackCamera.enabled = false;
                MapCamera.enabled = true;
                pathmap.SetActive(true);

            }
            else if (toenable == "main")
            {
                BlackCamera.enabled = false;
                (this.GetComponent("FirstPersonController") as MonoBehaviour).enabled = true;
                MainCamera.enabled = true;
            }
            countdown = -1;
        }

      
    }
    private void ActivateMap()
    {
        (this.GetComponent("FirstPersonController") as MonoBehaviour).enabled = false;
        MainCamera.enabled = false;
        BlackCamera.enabled = true;
        Task.Delay(5000).Wait();
        BlackCamera.enabled = false;
        MapCamera.enabled = true;
    }

    }
