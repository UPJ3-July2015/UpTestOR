package me.replace;

public class CUtils {

	public static boolean isNullOrEmpty(String src) {
		return (src == null || src.length() == 0) ? true : false;
	}
	
	public static boolean isNullOrEmptyTrim(String src) {
		return (src == null || src.trim().length() == 0) ? true : false;
	}
}
