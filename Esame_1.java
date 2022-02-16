class prova{
	
	// Iterativo
	public static boolean e1 (int [][] m){
		
		boolean check = (m != null);
		
		if(check){
			
			for(int i = 0; i < m.length && check; i++){
				
				int tmpR = 0, tmpC = 0;
				
				for(int j = 0; j < m[i].length; j++){
					
					tmpR += m[i][j];
					tmpC += m[j][i];
					
				}
				
				check = (tmpR == tmpC);
				
			}
			
		}
		
		return check;
		
	}
	
	public static boolean e2 (int [][] m){
		
		if(m != null)
			return e2(m, 0, m.length - 1);
		else
			return false;
		
	}
	
	// Dicotomica
	public static boolean e2 (int [][] m, int l, int r){
		
		if(l < r){
			return e2(m, l, (l + r) / 2) && e2(m, (l + r) / 2 + 1, r);
		}else{
			return (sommaR(m[l], m[l].length - 1) == sommaC(m, l, 0));
		}
		
	}
	
	// Co-variante
	public static int sommaR (int [] m, int i){
		
		if(i >= 0){
			return m[i] + sommaR(m, i - 1);
		}else{
			return 0;
		}
		
	}
	
	// Contro-variante
	public static int sommaC (int [][] m, int j, int i){
		
		if(i < m.length){
			return m[i][j] + sommaC(m, j, i + 1);
		}else{
			return 0;
		}
		
	}
	
	public static void main (String [] args){
		
		int [][] m = {{1,2,4},{2,7,3},{3,3,2}};
		
		// int [][] m = {{7,4,3},{4,6,1},{2,5,1}};
		
		// int [][] m= {{1,2},{2,1}};
		
		// int [][] m = {{1,2,3},{2,3,1},{3,1,2}};
		
		// int [][] m = {{1,2,3},{2,3,1},{3,4,1}};
		
		System.out.println(e1(m));
		System.out.println(e2(m));
		
	}
	
}
