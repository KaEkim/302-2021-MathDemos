using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LerpDemo : MonoBehaviour
{

    public GameObject thingStart;

    public GameObject thingEnd;



    [Range(-1, 2)]
    public float p = 0;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = AnimMath.Lerp(thingStart.transform.position, thingEnd.transform.position, p);
    }
    private void OnValidate()
    {
        transform.position = AnimMath.Lerp(thingStart.transform.position, thingEnd.transform.position, p);
    }



}
