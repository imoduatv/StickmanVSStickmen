using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Levels : MonoBehaviour
{
	public List<Transform> childs = new List<Transform>();

	private void Awake()
	{
		IEnumerator enumerator = base.transform.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				Transform transform = (Transform)enumerator.Current;
				childs.Add(transform.gameObject.transform);
			}
		}
		finally
		{
			IDisposable disposable;
			if ((disposable = (enumerator as IDisposable)) != null)
			{
				disposable.Dispose();
			}
		}
		for (int i = 0; i < childs.Count; i++)
		{
			childs[i].transform.name = "Level" + (i + 1);
			childs[i].GetChild(0).GetComponent<Text>().text = childs[i].transform.name;
		}
		for (int j = 1; j < childs.Count; j++)
		{
			childs[j].GetComponent<LevelUnlock>().PreviousLevel = childs[j - 1].gameObject;
		}
	}

	private void Update()
	{
	}
}
