using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LerpDemo : MonoBehaviour
{

    public GameObject thingStart;

    public GameObject thingEnd;



    [Range(-1, 2)]

    public float p = 0;
    public float animLength = 2;

    private float animTime = 0;
    private bool animPlaying = false;

    public AnimationCurve animCurve;

    // Start is called before the first frame update
    void Start()
    {
        


    }

    // Update is called once per frame
    void Update()
    {
        if (animPlaying)
        {

            animTime += Time.deltaTime;

            p = animTime / animLength;
            p = Mathf.Clamp(p, 0, 1);


            p = p * p;

            transform.position = AnimMath.Lerp(thingStart.transform.position, thingEnd.transform.position, p);
            if (p >= 1) animPlaying = false;

        }

        
    }

    private void OnValidate()
    {
        transform.position = AnimMath.Lerp(thingStart.transform.position, thingEnd.transform.position, p);
    }

    public void PlayAnim()
    {
        animPlaying = true;
        animTime = 0;
    }



}
