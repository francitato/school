public static boolean e1(int[][] x) {
    boolean ogni = true;
    for (int i = 0; i < x.length && ogni; i++)
        for (int j = 0; j < x[i].length && ogni; j++)
            ogni = !(x[i][j] % 2 == 0);
    return ogni;
}

public static boolean e2(int[][] x) {
    return e2R(x, 0, x.length);
}

public static boolean e2R(int[][] x, int l, int r) {
    if (l+1 == r) {
        return esiste(x[l]);
    } else {
        int m = l+r/2;
        return  e2R(x, l, m) || e2R(x, m, r);
    }
}

public static boolean esiste(int[] r) {
    boolean risultato = false;
		for(int i = 0; i < r.length && !risultato; i++){
			if(r[i] == 0)
				risultato = true;
		}
		return risultato;
}
