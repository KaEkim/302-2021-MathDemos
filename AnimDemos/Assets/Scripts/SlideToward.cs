using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlideToward : MonoBehaviour
{

    public Transform target; 

    void Start()
    {
        
    }

    void Update()
    {
        transform.position = AnimMath.Slide(transform.position, target.position, .8f);
    }
}
