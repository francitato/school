public static boolean e1(int[][] x) {
    boolean ogni = true;
  
    for (int i = 0; ogni && i < x.length ; i++)
        for (int j = 0; ogni && j < x[i].length ; j++)
            ogni = x[i][j] != 0;
  
    return ogni;
}

public static boolean e2(int[][] x) {
    return e2R(x, 0);
}

public static boolean e2R(int[][] x, int i) {
    if (i == x.length) {
        return false;
    } else {
        return esiste(x[i]) || e2R(x, i + 1);
    }
}

public static boolean esiste(int[] r) {
    boolean risultato = false;
    
    for(int i = 0; i < r.length && !risultato; i++){
        risultato = r[i] == 0;
    }
    
    return risultato;
}
