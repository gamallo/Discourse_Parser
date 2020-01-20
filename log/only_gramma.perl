# Single: VERB
# Declare: nomin:no
					@temp = ($listTags =~ /($VERB$a2)/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)/$1/g;

# Single: PRP<lemma:pero|because|though|if|whether|while> [X]?
# Corr: tag:CONJ, type:S
					@temp = ($listTags =~ /($PRP${l}lemma:(?:pero|because|though|if|whether|while)\|${r})(?:$X$a2)?/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($PRP${l}lemma:(?:pero|because|though|if|whether|while)\|${r})($X$a2)?/$1$2/g;
					Corr("Head","tag:CONJ,type:S",\@temp);

# Single: [NOUN] [Fc]? CONJ<lemma:que> [NOUN] [VERB]
# Corr: tag:PRO, type:R
					@temp = ($listTags =~ /(?:$NOUN$a2)(?:$Fc$a2)?($CONJ${l}lemma:que\|${r})(?:$NOUN$a2)(?:$VERB$a2)/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($NOUN$a2)($Fc$a2)?($CONJ${l}lemma:que\|${r})($NOUN$a2)($VERB$a2)/$1$2$3$4$5/g;
					Corr("Head","tag:PRO,type:R",\@temp);

# Single: [X<lemma:lo>] CONJ<lemma:que>
# Corr: tag:PRO, type:R
					@temp = ($listTags =~ /(?:$X${l}lemma:lo\|${r})($CONJ${l}lemma:que\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:lo\|${r})($CONJ${l}lemma:que\|${r})/$1$2/g;
					Corr("Head","tag:PRO,type:R",\@temp);

# Single: X<lemma:lo> [PRO<lemma:que>]
# Corr: tag:DET, type:A
					@temp = ($listTags =~ /($X${l}lemma:lo\|${r})(?:$PRO${l}lemma:que\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:lo\|${r})($PRO${l}lemma:que\|${r})/$1$2/g;
					Corr("Head","tag:DET,type:A",\@temp);

# Single: [X<lemma:que>] X<token:lo> [VERB]
# Corr: tag:PRO, type:P
					@temp = ($listTags =~ /(?:$X${l}lemma:que\|${r})($X${l}token:lo\|${r})(?:$VERB$a2)/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:que\|${r})($X${l}token:lo\|${r})($VERB$a2)/$1$2$3/g;
					Corr("Head","tag:PRO,type:P",\@temp);

# Single: CONJ<lemma:pero|mas|aunque|sinó|>
# Corr: type:S
					@temp = ($listTags =~ /($CONJ${l}lemma:(?:pero|mas|aunque|sinó|)\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($CONJ${l}lemma:(?:pero|mas|aunque|sinó|)\|${r})/$1/g;
					Corr("Head","type:S",\@temp);

# Single: [X]? NOUN<lemma:$AdvTemp>
# Corr: tag:ADV
					@temp = ($listTags =~ /(?:$X$a2)?($NOUN${l}lemma:$AdvTemp\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($X$a2)?($NOUN${l}lemma:$AdvTemp\|${r})/$1$2/g;
					Corr("Head","tag:ADV",\@temp);

# Single: VERB<token:[cC]reo> [X]? [X<lemma:que>]
# Corr: lemma:creer
					@temp = ($listTags =~ /($VERB${l}token:[cC]reo\|${r})(?:$X$a2)?(?:$X${l}lemma:que\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}token:[cC]reo\|${r})($X$a2)?($X${l}lemma:que\|${r})/$1$2$3/g;
					Corr("Head","lemma:creer",\@temp);

# Single: X<token:–> [X]
# Corr: tag:Fe
					@temp = ($listTags =~ /($X${l}token:–\|${r})(?:$X$a2)/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($X${l}token:–\|${r})($X$a2)/$1$2/g;
					Corr("Head","tag:Fe",\@temp);

# Single: [X<lemma:este>] X<lemma:lunes|martes|miércoles|jueves|viernes|sábado|domingo>
# Corr: tag:DATE
					@temp = ($listTags =~ /(?:$X${l}lemma:este\|${r})($X${l}lemma:(?:lunes|martes|miércoles|jueves|viernes|sábado|domingo)\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:este\|${r})($X${l}lemma:(?:lunes|martes|miércoles|jueves|viernes|sábado|domingo)\|${r})/$1$2/g;
					Corr("Head","tag:DATE",\@temp);

# Single: [VERB|NOUN] ADV<lemma:como>|PRO<lemma:como>
# Corr: tag:CONJ
# PunctR: X Fz|Fe|Frc
					@temp = ($listTags =~ /(?:$VERB$a2|$NOUN$a2)($ADV${l}lemma:como\|${r}|$PRO${l}lemma:como\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$NOUN$a2)($ADV${l}lemma:como\|${r}|$PRO${l}lemma:como\|${r})/$1$2/g;
					Corr("Head","tag:CONJ",\@temp);

# PunctL: Fz|Fe|Fra X
					@temp = ($listTags =~ /($Fz$a2|$Fe$a2|$Fra$a2)($X$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fz$a2|$Fe$a2|$Fra$a2)($X$a2)/$2/g;

# >: VERB<lemma:tener|ter|haber|haver|take|have> NOUN<number:S> [PRP]
					@temp = ($listTags =~ /($VERB${l}lemma:(?:tener|ter|haber|haver|take|have)\|${r})($NOUN${l}number:S\|${r})(?:$PRP$a2)/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:(?:tener|ter|haber|haver|take|have)\|${r})($NOUN${l}number:S\|${r})($PRP$a2)/$1$3/g;
					LEX();

# >: VERB<lemma:be|ser> ADJ [PRP]
					@temp = ($listTags =~ /($VERB${l}lemma:(?:be|ser)\|${r})($ADJ$a2)(?:$PRP$a2)/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:(?:be|ser)\|${r})($ADJ$a2)($PRP$a2)/$1$3/g;
					LEX();

# <: [VERB<lemma:ser|tornar|converter|be|become>] ADV<lemma:$Quant> ADJ [CONJ|PRO<lemma:que|como>]
# NEXT
# >: VERB<lemma:ser|tornar|converter|be|become> [ADV<lemma:$Quant>] ADJ [CONJ|PRO<lemma:que|como>]
# NEXT
# >: VERB<lemma:ser|tornar|converter|be|become>  [ADV<lemma:$Quant>] [ADJ] CONJ|PRO<lemma:que|como>
					@temp = ($listTags =~ /(?:$VERB${l}lemma:(?:ser|tornar|converter|be|become)\|${r})($ADV${l}lemma:$Quant\|${r})($ADJ$a2)(?:$CONJ$a2|$PRO${l}lemma:(?:que|como)\|${r})/g);
					$Rel =  "<";
					DepHead_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB${l}lemma:(?:ser|tornar|converter|be|become)\|${r})(?:$ADV${l}lemma:$Quant\|${r})($ADJ$a2)(?:$CONJ$a2|$PRO${l}lemma:(?:que|como)\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB${l}lemma:(?:ser|tornar|converter|be|become)\|${r})(?:$ADV${l}lemma:$Quant\|${r})(?:$ADJ$a2)($CONJ$a2|$PRO${l}lemma:(?:que|como)\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:(?:ser|tornar|converter|be|become)\|${r})($ADV${l}lemma:$Quant\|${r})($ADJ$a2)($CONJ$a2|$PRO${l}lemma:(?:que|como)\|${r})/$1/g;
					LEX();

# <: X<token:[Aa]> X<lemma:partir> [PRP<lemma:de>]
# NEXT
# <: [X<token:[Aa]>] X<lemma:partir> PRP<lemma:de>
					@temp = ($listTags =~ /($X${l}token:[Aa]\|${r})($X${l}lemma:partir\|${r})(?:$PRP${l}lemma:de\|${r})/g);
					$Rel =  "<";
					DepHead_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$X${l}token:[Aa]\|${r})($X${l}lemma:partir\|${r})($PRP${l}lemma:de\|${r})/g);
					$Rel =  "<";
					DepHead_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}token:[Aa]\|${r})($X${l}lemma:partir\|${r})($PRP${l}lemma:de\|${r})/$3/g;
					LEX();

# <: X<lemma:momento|minuto|segundo|hora|día|mes|año|semana|siglo> X<lemma:antes|después>
# Add: tag:DATE
					@temp = ($listTags =~ /($X${l}lemma:(?:momento|minuto|segundo|hora|día|mes|año|semana|siglo)\|${r})($X${l}lemma:(?:antes|después)\|${r})/g);
					$Rel =  "<";
					DepHead_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:(?:momento|minuto|segundo|hora|día|mes|año|semana|siglo)\|${r})($X${l}lemma:(?:antes|después)\|${r})/$2/g;
					LEX();
					Add("DepHead_lex","tag:DATE",\@temp);

# >: X<lemma:lunes|martes|miércoles|jueves|viernes|sábado|domingo> Fc [DATE]
# NEXT
# <: X<lemma:lunes|martes|miércoles|jueves|viernes|sábado|domingo> [Fc]? DATE
					@temp = ($listTags =~ /($X${l}lemma:(?:lunes|martes|miércoles|jueves|viernes|sábado|domingo)\|${r})($Fc$a2)(?:$DATE$a2)/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:(?:lunes|martes|miércoles|jueves|viernes|sábado|domingo)\|${r})(?:$Fc$a2)?($DATE$a2)/g);
					$Rel =  "<";
					DepHead_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:(?:lunes|martes|miércoles|jueves|viernes|sábado|domingo)\|${r})($Fc$a2)?($DATE$a2)/$3/g;
					LEX();

# >: [X<lemma:a>] X<lemma:pesar> X<lemma:de>
# NEXT
# >: X<lemma:a> X<lemma:pesar> [X<lemma:de>]
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /(?:$X${l}lemma:a\|${r})($X${l}lemma:pesar\|${r})($X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:a\|${r})($X${l}lemma:pesar\|${r})(?:$X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:a\|${r})($X${l}lemma:pesar\|${r})($X${l}lemma:de\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: [X<lemma:a>] X<lemma:pesar> X<lemma:que>
# NEXT
# >: X<lemma:a> X<lemma:pesar> [X<lemma:que>]
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /(?:$X${l}lemma:a\|${r})($X${l}lemma:pesar\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:a\|${r})($X${l}lemma:pesar\|${r})(?:$X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:a\|${r})($X${l}lemma:pesar\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: [X<token:[Pp]ese>] X<lemma:a> X<lemma:que>
# NEXT
# >: X<lemma:[Pp]ese> X<lemma:a> [X<lemma:que>]
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /(?:$X${l}token:[Pp]ese\|${r})($X${l}lemma:a\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:[Pp]ese\|${r})($X${l}lemma:a\|${r})(?:$X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:[Pp]ese\|${r})($X${l}lemma:a\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:sin> X<lemma:embargo>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:sin\|${r})($X${l}lemma:embargo\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:sin\|${r})($X${l}lemma:embargo\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:ahora> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:ahora\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:ahora\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:bien> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:bien\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:bien\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:por> X<lemma:eso>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:por\|${r})($X${l}lemma:eso\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:por\|${r})($X${l}lemma:eso\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:con> X<lemma:todo>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:con\|${r})($X${l}lemma:todo\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:con\|${r})($X${l}lemma:todo\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:sino> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:sino\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:sino\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: [X<lemma:a>] X<lemma:menos> X<lemma:que>
# NEXT
# >: X<lemma:a> X<lemma:menos> [X<lemma:que>]
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /(?:$X${l}lemma:a\|${r})($X${l}lemma:menos\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:a\|${r})($X${l}lemma:menos\|${r})(?:$X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:a\|${r})($X${l}lemma:menos\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:a[uú]n> X<lemma:así>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:a[uú]n\|${r})($X${l}lemma:así\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:a[uú]n\|${r})($X${l}lemma:así\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:excepto> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:excepto\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:excepto\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:menos> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:menos\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:menos\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<token:quitando> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}token:quitando\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}token:quitando\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<token:sacando> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}token:sacando\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}token:sacando\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:s[óo]lo> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:s[óo]lo\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:s[óo]lo\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:ahora> X<lemma:bien>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:ahora\|${r})($X${l}lemma:bien\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:ahora\|${r})($X${l}lemma:bien\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:ahora> X<lemma:que>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:ahora\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:ahora\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<lemma:mismo> X<lemma:si>
# Add: tag:CONJ,type:S
					@temp = ($listTags =~ /($X${l}lemma:mismo\|${r})($X${l}lemma:si\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:mismo\|${r})($X${l}lemma:si\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S",\@temp);

# >: X<token:[pP]uesto|[Dd]ado|[vV]isto|[cC]onsiderando> X<lemma:que>
# Add: tag:CONJ,type:S,loc:causal
					@temp = ($listTags =~ /($X${l}token:(?:[pP]uesto|[Dd]ado|[vV]isto|[cC]onsiderando)\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}token:(?:[pP]uesto|[Dd]ado|[vV]isto|[cC]onsiderando)\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causal",\@temp);

# >: [X<token:[tT]eniendo>] [X<lemma:en>] X<lemma:cuenta> X<lemma:que>
# NEXT
# >: [X<token:[tT]eniendo>] X<lemma:en> X<lemma:cuenta> [X<lemma:que>]
# NEXT
# >: X<token:[tT]eniendo> X<lemma:en> [X<lemma:cuenta>] [X<lemma:que>]
# Add: tag:CONJ,type:S,loc:causal
					@temp = ($listTags =~ /(?:$X${l}token:[tT]eniendo\|${r})(?:$X${l}lemma:en\|${r})($X${l}lemma:cuenta\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$X${l}token:[tT]eniendo\|${r})($X${l}lemma:en\|${r})($X${l}lemma:cuenta\|${r})(?:$X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}token:[tT]eniendo\|${r})($X${l}lemma:en\|${r})(?:$X${l}lemma:cuenta\|${r})(?:$X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}token:[tT]eniendo\|${r})($X${l}lemma:en\|${r})($X${l}lemma:cuenta\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causal",\@temp);

# >: X<lemma:ya> X<lemma:que>
# Add: tag:CONJ,type:S,loc:causal
					@temp = ($listTags =~ /($X${l}lemma:ya\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:ya\|${r})($X${l}lemma:que\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causal",\@temp);

# >: [X<lemma:a>] X<lemma:causa|fuerza|propuesta|petición|efecto> X<lemma:de>
# NEXT
# >: X<lemma:a> X<lemma:causa|fuerza|propuesta|petición|efecto> [X<lemma:de>]
# Add: tag:CONJ,type:S,loc:causalprep
					@temp = ($listTags =~ /(?:$X${l}lemma:a\|${r})($X${l}lemma:(?:causa|fuerza|propuesta|petición|efecto)\|${r})($X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:a\|${r})($X${l}lemma:(?:causa|fuerza|propuesta|petición|efecto)\|${r})(?:$X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:a\|${r})($X${l}lemma:(?:causa|fuerza|propuesta|petición|efecto)\|${r})($X${l}lemma:de\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causalprep",\@temp);

# >: [X<lemma:a>] [DET<token:los>] X<token:efectos> X<lemma:de>
# NEXT
# >: [X<lemma:a>] DET<token:los> X<token:efectos> [X<lemma:de>]
# NEXT
# >: X<lemma:a> DET<token:los> [X<token:efectos>] [X<lemma:de>]
# Add: tag:CONJ,type:S,loc:causalprep
					@temp = ($listTags =~ /(?:$X${l}lemma:a\|${r})(?:$DET${l}token:los\|${r})($X${l}token:efectos\|${r})($X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$X${l}lemma:a\|${r})($DET${l}token:los\|${r})($X${l}token:efectos\|${r})(?:$X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:a\|${r})($DET${l}token:los\|${r})(?:$X${l}token:efectos\|${r})(?:$X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:a\|${r})($DET${l}token:los\|${r})($X${l}token:efectos\|${r})($X${l}lemma:de\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causalprep",\@temp);

# >: [X<lemma:con>] X<lemma:motivo> X<lemma:de>
# NEXT
# >: X<lemma:con> X<lemma:motivo> [X<lemma:de>]
# Add: tag:CONJ,type:S,loc:causalprep
					@temp = ($listTags =~ /(?:$X${l}lemma:con\|${r})($X${l}lemma:motivo\|${r})($X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:con\|${r})($X${l}lemma:motivo\|${r})(?:$X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:con\|${r})($X${l}lemma:motivo\|${r})($X${l}lemma:de\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causalprep",\@temp);

# >: [X<lemma:en>] X<lemma:razón|vista|virtud> X<lemma:de>
# NEXT
# >: X<lemma:en> X<lemma:razón|vista|virtud> [X<lemma:de>]
# Add: tag:CONJ,type:S,loc:causalprep
					@temp = ($listTags =~ /(?:$X${l}lemma:en\|${r})($X${l}lemma:(?:razón|vista|virtud)\|${r})($X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:en\|${r})($X${l}lemma:(?:razón|vista|virtud)\|${r})(?:$X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:en\|${r})($X${l}lemma:(?:razón|vista|virtud)\|${r})($X${l}lemma:de\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causalprep",\@temp);

# >: [X<lemma:por>] X<lemma:causa|culpa|razón> X<lemma:de>
# NEXT
# >: X<lemma:por> X<lemma:causa|culpa|razón> [X<lemma:de>]
# Add: tag:CONJ,type:S,loc:causalprep
					@temp = ($listTags =~ /(?:$X${l}lemma:por\|${r})($X${l}lemma:(?:causa|culpa|razón)\|${r})($X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:por\|${r})($X${l}lemma:(?:causa|culpa|razón)\|${r})(?:$X${l}lemma:de\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:por\|${r})($X${l}lemma:(?:causa|culpa|razón)\|${r})($X${l}lemma:de\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causalprep",\@temp);

# >: [X<lemma:de>] X<lemma:acuerdo> X<lemma:con>
# NEXT
# >: X<lemma:de> X<lemma:acuerdo> [X<lemma:con>]
# Add: tag:CONJ,type:S,loc:causalprep
					@temp = ($listTags =~ /(?:$X${l}lemma:de\|${r})($X${l}lemma:acuerdo\|${r})($X${l}lemma:con\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($X${l}lemma:de\|${r})($X${l}lemma:acuerdo\|${r})(?:$X${l}lemma:con\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:de\|${r})($X${l}lemma:acuerdo\|${r})($X${l}lemma:con\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causalprep",\@temp);

# >: X<token:[gG]racias> X<lemma:a>
# Add: tag:CONJ,type:S,loc:causalprep
					@temp = ($listTags =~ /($X${l}token:[gG]racias\|${r})($X${l}lemma:a\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}token:[gG]racias\|${r})($X${l}lemma:a\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:causalprep",\@temp);

# >: X<lemma:en> X<lemma:consecuencia>
# Add: tag:CONJ,type:S,loc:conseq
					@temp = ($listTags =~ /($X${l}lemma:en\|${r})($X${l}lemma:consecuencia\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:en\|${r})($X${l}lemma:consecuencia\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:conseq",\@temp);

# >: X<lemma:por> X<lemma:tanto|consiguiente>
# Add: tag:CONJ,type:S,loc:conseq
					@temp = ($listTags =~ /($X${l}lemma:por\|${r})($X${l}lemma:(?:tanto|consiguiente)\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:por\|${r})($X${l}lemma:(?:tanto|consiguiente)\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:conseq",\@temp);

# >: [Fc] X<lemma:por> X<token:eso>
# Add: tag:CONJ,type:S,loc:conseq
					@temp = ($listTags =~ /(?:$Fc$a2)($X${l}lemma:por\|${r})($X${l}token:eso\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($X${l}lemma:por\|${r})($X${l}token:eso\|${r})/$1$2/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:conseq",\@temp);

# >: [PRP<lemma:por>] X<token:lo> X<lemma:cual>
# NEXT
# >: PRP<lemma:por> X<token:lo> [X<lemma:cual|tanto>]
# Add: tag:CONJ,type:S,loc:conseq
					@temp = ($listTags =~ /(?:$PRP${l}lemma:por\|${r})($X${l}token:lo\|${r})($X${l}lemma:cual\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /($PRP${l}lemma:por\|${r})($X${l}token:lo\|${r})(?:$X${l}lemma:(?:cual|tanto)\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($PRP${l}lemma:por\|${r})($X${l}token:lo\|${r})($X${l}lemma:(?:cual|tanto)\|${r})/$1/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:conseq",\@temp);

# >: [Fc] [PRP<lemma:por>] X<token:lo> X<lemma:que>
# NEXT
# >: [Fc] PRP<lemma:por> X<token:lo> [X<lemma:que>]
# Add: tag:CONJ,type:S,loc:conseq
					@temp = ($listTags =~ /(?:$Fc$a2)(?:$PRP${l}lemma:por\|${r})($X${l}token:lo\|${r})($X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)($PRP${l}lemma:por\|${r})($X${l}token:lo\|${r})(?:$X${l}lemma:que\|${r})/g);
					$Rel =  ">";
					HeadDep_lex($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($PRP${l}lemma:por\|${r})($X${l}token:lo\|${r})($X${l}lemma:que\|${r})/$1$2/g;
					LEX();
					Add("HeadDep_lex","tag:CONJ,type:S,loc:conseq",\@temp);

# CoordL: ADV [Fc] [ADV] CONJ<(type:C)|(lemma:$CCord)> [ADV]
# NEXT
# PunctL: [ADV] Fc [ADV] CONJ<(type:C)|(lemma:$CCord)> [ADV]
# Recursivity: 10
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADV$a2)(?:$Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADV$a2)($Fc$a2)(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2)($Fc$a2)($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$3$4$5/g;

# CoordL: [Fc]? ADV CONJ<(type:C)|(lemma:$CCord)> [ADV]
# NEXT
# CoordR: [Fc]? [ADV] CONJ<(type:C)|(lemma:$CCord)> ADV
# Add: coord:adv
					@temp = ($listTags =~ /(?:$Fc$a2)?($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADV$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/g);
					$Rel =  "CoordR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($ADV$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADV$a2)/$1$3/g;
					Add("HeadDep","coord:adv",\@temp);

# PunctL: Fc CONJ<coord:adv>
					@temp = ($listTags =~ /($Fc$a2)($CONJ${l}coord:adv\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($CONJ${l}coord:adv\|${r})/$2/g;

# AdjnL: ADV<lemma:$Quant> ADV|ADJ
					@temp = ($listTags =~ /($ADV${l}lemma:$Quant\|${r})($ADV$a2|$ADJ$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV${l}lemma:$Quant\|${r})($ADV$a2|$ADJ$a2)/$2/g;

# AdjnL: ADV<lemma:[Mm]ais\@de> [DET]? CARD|NOUN
					@temp = ($listTags =~ /($ADV${l}lemma:[Mm]ais\@de\|${r})(?:$DET$a2)?($CARD$a2|$NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV${l}lemma:[Mm]ais\@de\|${r})($DET$a2)?($CARD$a2|$NOUN$a2)/$2$3/g;

# PunctL: [ADJ] Fc ADJ [NOUN]
# NEXT
# AdjnL: ADJ [Fc] ADJ [NOUN]
# Recursivity: 5
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($NOUN$a2)/$3$4/g;
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($NOUN$a2)/$3$4/g;
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($NOUN$a2)/$3$4/g;
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($NOUN$a2)/$3$4/g;
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($NOUN$a2)/$3$4/g;
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)($ADJ$a2)(?:$NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($NOUN$a2)/$3$4/g;

# CoordL: ADJ [Fc] [ADJ] CONJ<(type:C)|(lemma:$CCord)> [ADJ]
# NEXT
# PunctL: [ADJ] Fc [ADJ] CONJ<(type:C)|(lemma:$CCord)> [ADJ]
# Recursivity: 10
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;
					@temp = ($listTags =~ /($ADJ$a2)(?:$Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$ADJ$a2)($Fc$a2)(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2)($Fc$a2)($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$3$4$5/g;

# CoordL: [Fc]? ADJ CONJ<(type:C)|(lemma:$CCord)> [ADJ]
# NEXT
# CoordR: [Fc]? [ADJ] CONJ<(type:C)|(lemma:$CCord)> ADJ
# Add: coord:adj
# Inherit: gender, number
					@temp = ($listTags =~ /(?:$Fc$a2)?($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$ADJ$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/g);
					$Rel =  "CoordR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($ADJ$a2)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($ADJ$a2)/$1$3/g;
					Inherit("HeadDep","gender,number",\@temp);
					Add("HeadDep","coord:adj",\@temp);

# PunctL: Fc CONJ<coord:adj>
					@temp = ($listTags =~ /($Fc$a2)($CONJ${l}coord:adj\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($CONJ${l}coord:adj\|${r})/$2/g;

# AdjnL: ADJ|CONJ<coord:adj>|CARD [ADV]? NOUN
# Agreement: gender, number
# Recursivity: 1
					@temp = ($listTags =~ /($ADJ$a2|$CONJ${l}coord:adj\|${r}|$CARD$a2)(?:$ADV$a2)?($NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"gender,number",\@temp);
					$listTags =~ s/($ADJ${l}concord:1${r}|$CONJ${l}concord:1${b2}coord:adj\|${r}|$CARD${l}concord:1${r})($ADV$a2)?($NOUN${l}concord:1${r})/$2$3/g;
					$listTags =~ s/concord:[01]\|//g;
					@temp = ($listTags =~ /($ADJ$a2|$CONJ${l}coord:adj\|${r}|$CARD$a2)(?:$ADV$a2)?($NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"gender,number",\@temp);
					$listTags =~ s/($ADJ${l}concord:1${r}|$CONJ${l}concord:1${b2}coord:adj\|${r}|$CARD${l}concord:1${r})($ADV$a2)?($NOUN${l}concord:1${r})/$2$3/g;
					$listTags =~ s/concord:[01]\|//g;

# AdjnR: NOUN [ADV]? ADJ|CONJ<coord:adj>
# Agreement: gender, number
# Recursivity: 1
					@temp = ($listTags =~ /($NOUN$a2)(?:$ADV$a2)?($ADJ$a2|$CONJ${l}coord:adj\|${r})/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"gender,number",\@temp);
					$listTags =~ s/($NOUN${l}concord:1${r})($ADV$a2)?($ADJ${l}concord:1${r}|$CONJ${l}concord:1${b2}coord:adj\|${r})/$1$2/g;
					$listTags =~ s/concord:[01]\|//g;
					@temp = ($listTags =~ /($NOUN$a2)(?:$ADV$a2)?($ADJ$a2|$CONJ${l}coord:adj\|${r})/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"gender,number",\@temp);
					$listTags =~ s/($NOUN${l}concord:1${r})($ADV$a2)?($ADJ${l}concord:1${r}|$CONJ${l}concord:1${b2}coord:adj\|${r})/$1$2/g;
					$listTags =~ s/concord:[01]\|//g;

# PunctR: NOUN Fc [ADJ|CONJ<coord:adj>]
# NEXT
# AdjnR: NOUN [Fc] ADJ|CONJ<coord:adj>
# Agreement: gender, number
					@temp = ($listTags =~ /($NOUN$a2)($Fc$a2)(?:$ADJ$a2|$CONJ${l}coord:adj\|${r})/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUN$a2)(?:$Fc$a2)($ADJ$a2|$CONJ${l}coord:adj\|${r})/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"gender,number",\@temp);
					$listTags =~ s/($NOUN${l}concord:1${r})($Fc$a2)($ADJ${l}concord:1${r}|$CONJ${l}concord:1${b2}coord:adj\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# AdjnR:  NOUN NOUN
# Recursivity: 1
					@temp = ($listTags =~ /($NOUN$a2)($NOUN$a2)/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUN$a2)($NOUN$a2)/$1/g;
					@temp = ($listTags =~ /($NOUN$a2)($NOUN$a2)/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUN$a2)($NOUN$a2)/$1/g;

# AdjnR:  NOUN CARD
					@temp = ($listTags =~ /($NOUN$a2)($CARD$a2)/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUN$a2)($CARD$a2)/$1/g;

# AdjnL: CARD NOUN
					@temp = ($listTags =~ /($CARD$a2)($NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($CARD$a2)($NOUN$a2)/$2/g;

# Single: [DET] ADJ [PRP]
# Corr: tag:NOUN
					@temp = ($listTags =~ /(?:$DET$a2)($ADJ$a2)(?:$PRP$a2)/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($DET$a2)($ADJ$a2)($PRP$a2)/$1$2$3/g;
					Corr("Head","tag:NOUN",\@temp);

# SpecL: DET DET|PRO<type:X> [NOUN]
# NEXT
# SpecL: [DET] DET|PRO<type:X> NOUN
					@temp = ($listTags =~ /($DET$a2)($DET$a2|$PRO${l}type:X\|${r})(?:$NOUN$a2)/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$DET$a2)($DET$a2|$PRO${l}type:X\|${r})($NOUN$a2)/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($DET$a2)($DET$a2|$PRO${l}type:X\|${r})($NOUN$a2)/$3/g;

# SpecL: DET<type:I> DET<type:A> [PRO<type:R>]
					@temp = ($listTags =~ /($DET${l}type:I\|${r})($DET${l}type:A\|${r})(?:$PRO${l}type:R\|${r})/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($DET${l}type:I\|${r})($DET${l}type:A\|${r})($PRO${l}type:R\|${r})/$2$3/g;

# AdjnL: [DET] VERB<mode:P> NOUN
# NEXT
# SpecL: DET [VERB<mode:P>] NOUN
					@temp = ($listTags =~ /(?:$DET$a2)($VERB${l}mode:P\|${r})($NOUN$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($DET$a2)(?:$VERB${l}mode:P\|${r})($NOUN$a2)/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($DET$a2)($VERB${l}mode:P\|${r})($NOUN$a2)/$3/g;

# SpecL: DET CARD|DATE
					@temp = ($listTags =~ /($DET$a2)($CARD$a2|$DATE$a2)/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($DET$a2)($CARD$a2|$DATE$a2)/$2/g;

# SpecL: DET NOUN
					@temp = ($listTags =~ /($DET$a2)($NOUN$a2)/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($DET$a2)($NOUN$a2)/$2/g;

# SpecL: DET<type:A> PRO<type:X>
					@temp = ($listTags =~ /($DET${l}type:A\|${r})($PRO${l}type:X\|${r})/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($DET${l}type:A\|${r})($PRO${l}type:X\|${r})/$2/g;

# SpecL: DET<type:[AD]>|PRO<type:D> PRO<type:[RW]>
# Add: sust:yes
# Inherit: number, person
					@temp = ($listTags =~ /($DET${l}type:[AD]\|${r}|$PRO${l}type:D\|${r})($PRO${l}type:[RW]\|${r})/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($DET${l}type:[AD]\|${r}|$PRO${l}type:D\|${r})($PRO${l}type:[RW]\|${r})/$2/g;
					Inherit("DepHead","number,person",\@temp);
					Add("DepHead","sust:yes",\@temp);

# Single: [PRP] PRO<sust:yes>
# Add: sust:no
					@temp = ($listTags =~ /(?:$PRP$a2)($PRO${l}sust:yes\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($PRP$a2)($PRO${l}sust:yes\|${r})/$1$2/g;
					Add("Head","sust:no",\@temp);

# SpecL: DET<type:[AD]>|PRO<type:D> PRP<lemma:de> [NOUNSINGLE|PRO<type:D|P|I|X>]
# Add: nomin:yes
# Inherit: number, person
					@temp = ($listTags =~ /($DET${l}type:[AD]\|${r}|$PRO${l}type:D\|${r})($PRP${l}lemma:de\|${r})(?:$NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($DET${l}type:[AD]\|${r}|$PRO${l}type:D\|${r})($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$2$3/g;
					Inherit("DepHead","number,person",\@temp);
					Add("DepHead","nomin:yes",\@temp);

# ClitL: PRO<lemma:se> VERB
# Add: se:yes
# Uniq
					@temp = ($listTags =~ /($PRO${l}lemma:se\|${r})($VERB$a2)/g);
					$Rel =  "ClitL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRO${l}lemma:se\|${r})($VERB$a2)/$2/g;
					Add("DepHead","se:yes",\@temp);

# ClitR: VERB PRO<lemma:se>
# Add: se:yes
# Uniq
					@temp = ($listTags =~ /($VERB$a2)($PRO${l}lemma:se\|${r})/g);
					$Rel =  "ClitR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($PRO${l}lemma:se\|${r})/$1/g;
					Add("HeadDep","se:yes",\@temp);

# ClitL: PRO<token:$cliticoind> VERB
# Add: ind:yes
# Uniq
					@temp = ($listTags =~ /($PRO${l}token:$cliticoind\|${r})($VERB$a2)/g);
					$Rel =  "ClitL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRO${l}token:$cliticoind\|${r})($VERB$a2)/$2/g;
					Add("DepHead","ind:yes",\@temp);

# ClitR: VERB PRO<token:$cliticoind>
# Add: ind:yes
# Uniq
					@temp = ($listTags =~ /($VERB$a2)($PRO${l}token:$cliticoind\|${r})/g);
					$Rel =  "ClitR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($PRO${l}token:$cliticoind\|${r})/$1/g;
					Add("HeadDep","ind:yes",\@temp);

# ClitL: PRO<token:$cliticopers> VERB
# Recursivity: 1
					@temp = ($listTags =~ /($PRO${l}token:$cliticopers\|${r})($VERB$a2)/g);
					$Rel =  "ClitL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRO${l}token:$cliticopers\|${r})($VERB$a2)/$2/g;
					@temp = ($listTags =~ /($PRO${l}token:$cliticopers\|${r})($VERB$a2)/g);
					$Rel =  "ClitL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRO${l}token:$cliticopers\|${r})($VERB$a2)/$2/g;

# ClitR: VERB PRO<token:$cliticopers>
# Recursivity: 1
					@temp = ($listTags =~ /($VERB$a2)($PRO${l}token:$cliticopers\|${r})/g);
					$Rel =  "ClitR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($PRO${l}token:$cliticopers\|${r})/$1/g;
					@temp = ($listTags =~ /($VERB$a2)($PRO${l}token:$cliticopers\|${r})/g);
					$Rel =  "ClitR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($PRO${l}token:$cliticopers\|${r})/$1/g;

# VSpecL: VERB<type:S> [ADV]? VERB<mode:P>
# Add: voice:passive
# Inherit: mode, person, tense, number
					@temp = ($listTags =~ /($VERB${l}type:S\|${r})(?:$ADV$a2)?($VERB${l}mode:P\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}type:S\|${r})($ADV$a2)?($VERB${l}mode:P\|${r})/$2$3/g;
					Inherit("DepHead","mode,person,tense,number",\@temp);
					Add("DepHead","voice:passive",\@temp);

# VSpecL: VERB<token:[Ff]ui|[Ff]ue|[Ff]uimos|[Ff]ueran|[Ff]uisteis|[Ff]uese|[Ff]uesen> [ADV]? VERB<mode:P>
# Add: voice:passive
# Inherit: mode, person, tense, number
					@temp = ($listTags =~ /($VERB${l}token:(?:[Ff]ui|[Ff]ue|[Ff]uimos|[Ff]ueran|[Ff]uisteis|[Ff]uese|[Ff]uesen)\|${r})(?:$ADV$a2)?($VERB${l}mode:P\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}token:(?:[Ff]ui|[Ff]ue|[Ff]uimos|[Ff]ueran|[Ff]uisteis|[Ff]uese|[Ff]uesen)\|${r})($ADV$a2)?($VERB${l}mode:P\|${r})/$2$3/g;
					Inherit("DepHead","mode,person,tense,number",\@temp);
					Add("DepHead","voice:passive",\@temp);

# VSpecL: VERB<(type:A)|(lemma:ter|haver|haber|avoir|have)> [ADV]? VERB<mode:P>
# Add: type:perfect
# Inherit: mode, person, tense, number
					@temp = ($listTags =~ /($VERB${l}type:A\|${r}|$VERB${l}lemma:(?:ter|haver|haber|avoir|have)\|${r})(?:$ADV$a2)?($VERB${l}mode:P\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}type:A\|${r}|$VERB${l}lemma:(?:ter|haver|haber|avoir|have)\|${r})($ADV$a2)?($VERB${l}mode:P\|${r})/$2$3/g;
					Inherit("DepHead","mode,person,tense,number",\@temp);
					Add("DepHead","type:perfect",\@temp);

# VSpecL: VERB<lemma:$VModalES> [ADV]? VERB<mode:N>
# Inherit: mode, person, tense, number
					@temp = ($listTags =~ /($VERB${l}lemma:$VModalES\|${r})(?:$ADV$a2)?($VERB${l}mode:N\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$VModalES\|${r})($ADV$a2)?($VERB${l}mode:N\|${r})/$2$3/g;
					Inherit("DepHead","mode,person,tense,number",\@temp);

# VSpecL: [VERB<lemma:tener|haber>] [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? CONJ<lemma:que&type:S> [ADV]? VERB<mode:N>
# NEXT
# VSpecL: VERB<lemma:tener|haber> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [CONJ<lemma:que&type:S>] [ADV]? VERB<mode:N>
# Inherit: mode, person, tense, number
					@temp = ($listTags =~ /(?:$VERB${l}lemma:(?:tener|haber)\|${r})(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?($CONJ${l}lemma:que\|${b2}type:S\|${r})(?:$ADV$a2)?($VERB${l}mode:N\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB${l}lemma:(?:tener|haber)\|${r})(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$CONJ${l}lemma:que\|${b2}type:S\|${r})(?:$ADV$a2)?($VERB${l}mode:N\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:(?:tener|haber)\|${r})($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($CONJ${l}lemma:que\|${b2}type:S\|${r})($ADV$a2)?($VERB${l}mode:N\|${r})/$2$3$4$5$6$7$8$9$10$11$13$14/g;
					Inherit("DepHead","mode,person,tense,number",\@temp);

# VSpecL: [VERB<lemma:ir|venir|empezar|comenzar|acabar|finalizar|terminar|pasar|estar>] [ADV]? PRP<lemma:$PrepLocs> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? VERB<mode:N>
# NEXT
# VSpecL: VERB<lemma:ir|deber|venir|empezar|comenzar|acabar|finalizar|terminar|pasar|estar> [ADV]? [PRP<lemma:$PrepLocs>] [ADV]? VERB<mode:N>
# Inherit: mode, person, tense, number
					@temp = ($listTags =~ /(?:$VERB${l}lemma:(?:ir|venir|empezar|comenzar|acabar|finalizar|terminar|pasar|estar)\|${r})(?:$ADV$a2)?($PRP${l}lemma:$PrepLocs\|${r})(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?($VERB${l}mode:N\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB${l}lemma:(?:ir|deber|venir|empezar|comenzar|acabar|finalizar|terminar|pasar|estar)\|${r})(?:$ADV$a2)?(?:$PRP${l}lemma:$PrepLocs\|${r})(?:$ADV$a2)?($VERB${l}mode:N\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:(?:ir|deber|venir|empezar|comenzar|acabar|finalizar|terminar|pasar|estar)\|${r})($ADV$a2)?($PRP${l}lemma:$PrepLocs\|${r})($ADV$a2)?($VERB${l}mode:N\|${r})/$2$4$5/g;
					Inherit("DepHead","mode,person,tense,number",\@temp);

# VSpecL: VERB<lemma:querer|desear|pensar|soler|acostumbrar> [ADV]? VERB<mode:N>
# Inherit: mode, person, tense, number
					@temp = ($listTags =~ /($VERB${l}lemma:(?:querer|desear|pensar|soler|acostumbrar)\|${r})(?:$ADV$a2)?($VERB${l}mode:N\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:(?:querer|desear|pensar|soler|acostumbrar)\|${r})($ADV$a2)?($VERB${l}mode:N\|${r})/$2$3/g;
					Inherit("DepHead","mode,person,tense,number",\@temp);

# VSpecL: VERB<lemma:estar> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? VERB<mode:G>
# Inherit: mode, person, tense, number
					@temp = ($listTags =~ /($VERB${l}lemma:estar\|${r})(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?(?:$ADV$a2)?($VERB${l}mode:G\|${r})/g);
					$Rel =  "VSpecL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:estar\|${r})($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($ADV$a2)?($VERB${l}mode:G\|${r})/$2$3$4$5$6$7$8$9$10$11$12/g;
					Inherit("DepHead","mode,person,tense,number",\@temp);

# PunctL: [ADV<pos:0>] Fc VERB
# NEXT
# AdjnL: ADV<pos:0> [Fc] VERB
					@temp = ($listTags =~ /(?:$ADV${l}pos:0\|${r})($Fc$a2)($VERB$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($ADV${l}pos:0\|${r})(?:$Fc$a2)($VERB$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV${l}pos:0\|${r})($Fc$a2)($VERB$a2)/$3/g;

# PunctR:  VERB [Fc] [ADV] Fc
# NEXT
# PunctR: VERB Fc [ADV] [Fc]
# NEXT
# AdjnR: VERB [Fc] ADV [Fc]
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)(?:$ADV$a2)($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)($Fc$a2)(?:$ADV$a2)(?:$Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)($ADV$a2)(?:$Fc$a2)/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)($ADV$a2)($Fc$a2)/$1/g;

# PunctL: Fc [ADV] [Fc] VERB
# NEXT
# PunctL: [Fc] [ADV] Fc VERB
# NEXT
# AdjnL: [Fc] ADV [Fc] VERB
					@temp = ($listTags =~ /($Fc$a2)(?:$ADV$a2)(?:$Fc$a2)($VERB$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)(?:$ADV$a2)($Fc$a2)($VERB$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)($ADV$a2)(?:$Fc$a2)($VERB$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($ADV$a2)($Fc$a2)($VERB$a2)/$4/g;

# AdjnR: VERB [NOUN|PRO<type:D|P|I|X>]? ADV|CONJ<coord:adv>
# Recursivity: 1
					@temp = ($listTags =~ /($VERB$a2)(?:$NOUN$a2|$PRO${l}type:(?:D|P|I|X)\|${r})?($ADV$a2|$CONJ${l}coord:adv\|${r})/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($NOUN$a2|$PRO${l}type:(?:D|P|I|X)\|${r})?($ADV$a2|$CONJ${l}coord:adv\|${r})/$1$2/g;
					@temp = ($listTags =~ /($VERB$a2)(?:$NOUN$a2|$PRO${l}type:(?:D|P|I|X)\|${r})?($ADV$a2|$CONJ${l}coord:adv\|${r})/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($NOUN$a2|$PRO${l}type:(?:D|P|I|X)\|${r})?($ADV$a2|$CONJ${l}coord:adv\|${r})/$1$2/g;

# AdjnL:  ADV|CONJ<coord:adv>  VERB
# Recursivity: 1
					@temp = ($listTags =~ /($ADV$a2|$CONJ${l}coord:adv\|${r})($VERB$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2|$CONJ${l}coord:adv\|${r})($VERB$a2)/$2/g;
					@temp = ($listTags =~ /($ADV$a2|$CONJ${l}coord:adv\|${r})($VERB$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($ADV$a2|$CONJ${l}coord:adv\|${r})($VERB$a2)/$2/g;

# TermR: PRP NOUN [Fc] [PRP] [NOUN] [CONJ<lemma:$CCord>] [PRP] [NOUN]
# NEXT
# CoordL: PRP [NOUN] [Fc] [PRP] [NOUN] CONJ<lemma:$CCord> [PRP] [NOUN]
# NEXT
# PunctL: [PRP] [NOUN] Fc [PRP] [NOUN] CONJ<lemma:$CCord> [PRP] [NOUN]
# Recursivity: 3
					@temp = ($listTags =~ /($PRP$a2)($NOUN$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)(?:$CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($PRP$a2)(?:$NOUN$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$PRP$a2)(?:$NOUN$a2)($Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRP$a2)($NOUN$a2)($Fc$a2)($PRP$a2)($NOUN$a2)($CONJ${l}lemma:$CCord\|${r})($PRP$a2)($NOUN$a2)/$4$5$6$7$8/g;
					@temp = ($listTags =~ /($PRP$a2)($NOUN$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)(?:$CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($PRP$a2)(?:$NOUN$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$PRP$a2)(?:$NOUN$a2)($Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRP$a2)($NOUN$a2)($Fc$a2)($PRP$a2)($NOUN$a2)($CONJ${l}lemma:$CCord\|${r})($PRP$a2)($NOUN$a2)/$4$5$6$7$8/g;
					@temp = ($listTags =~ /($PRP$a2)($NOUN$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)(?:$CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($PRP$a2)(?:$NOUN$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$PRP$a2)(?:$NOUN$a2)($Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRP$a2)($NOUN$a2)($Fc$a2)($PRP$a2)($NOUN$a2)($CONJ${l}lemma:$CCord\|${r})($PRP$a2)($NOUN$a2)/$4$5$6$7$8/g;
					@temp = ($listTags =~ /($PRP$a2)($NOUN$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)(?:$CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($PRP$a2)(?:$NOUN$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$PRP$a2)(?:$NOUN$a2)($Fc$a2)(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRP$a2)($NOUN$a2)($Fc$a2)($PRP$a2)($NOUN$a2)($CONJ${l}lemma:$CCord\|${r})($PRP$a2)($NOUN$a2)/$4$5$6$7$8/g;

# CoordL: [Fc]? PRP [NOUN] CONJ<lemma:$CCord> [PRP] [NOUN]
# NEXT
# TermR: [Fc]? [PRP] [NOUN] [CONJ<lemma:$CCord>] PRP NOUN
# NEXT
# TermR: [Fc]? PRP NOUN [CONJ<lemma:$CCord>] [PRP] [NOUN]
# NEXT
# CoordR: [Fc]? [PRP] [NOUN] CONJ<lemma:$CCord> PRP [NOUN]
# Add: coord:cprep
					@temp = ($listTags =~ /(?:$Fc$a2)?($PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$PRP$a2)(?:$NOUN$a2)(?:$CONJ${l}lemma:$CCord\|${r})($PRP$a2)($NOUN$a2)/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?($PRP$a2)($NOUN$a2)(?:$CONJ${l}lemma:$CCord\|${r})(?:$PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$PRP$a2)(?:$NOUN$a2)($CONJ${l}lemma:$CCord\|${r})($PRP$a2)(?:$NOUN$a2)/g);
					$Rel =  "CoordR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($PRP$a2)($NOUN$a2)($CONJ${l}lemma:$CCord\|${r})($PRP$a2)($NOUN$a2)/$1$4/g;
					Add("HeadDep","coord:cprep",\@temp);

# CprepR: [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] NOUN<type:C> PRP<lemma:$PrepRA> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3$4$5$6$7$8$9/g;

# CprepR: [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] NOUN<type:C> PRP<lemma:$PrepRA> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3$4$5$6$7/g;

# CprepR: [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] NOUN<type:C> PRP<lemma:$PrepRA> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3$4$5/g;

# CprepR: [NOUNSINGLE] [PRP] NOUN<type:C> PRP<lemma:$PrepRA> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /(?:$NOUNSINGLE$a2)(?:$PRP$a2)($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP$a2)($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3/g;

# CprepR: NOUN<type:C> PRP<lemma:$PrepRA> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUN${l}type:C\|${r})($PRP${l}lemma:$PrepRA\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# CprepR: [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] NOUNSINGLE PRP<lemma:de> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3$4$5$6$7$8$9/g;

# CprepR: [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] NOUNSINGLE PRP<lemma:de> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3$4$5$6$7/g;

# CprepR: [NOUNSINGLE] [PRP] [NOUNSINGLE] [PRP] NOUNSINGLE PRP<lemma:de> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /(?:$NOUNSINGLE$a2)(?:$PRP$a2)(?:$NOUNSINGLE$a2)(?:$PRP$a2)($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3$4$5/g;

# CprepR: [NOUNSINGLE] [PRP] NOUNSINGLE PRP<lemma:de> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /(?:$NOUNSINGLE$a2)(?:$PRP$a2)($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP$a2)($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3/g;

# CprepR: NOUNSINGLE PRP<lemma:de> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNSINGLE$a2)($PRP${l}lemma:de\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# CprepR: X<lemma:uno>|PRO<type:[DI]> PRP NOUNSINGLE|PRO<type:D|P|I|X>
# Add: tag:PRO
					@temp = ($listTags =~ /($X${l}lemma:uno\|${r}|$PRO${l}type:[DI]\|${r})($PRP$a2)($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($X${l}lemma:uno\|${r}|$PRO${l}type:[DI]\|${r})($PRP$a2)($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;
					Add("HeadRelDep","tag:PRO",\@temp);

# CprepR: NOUN ADV<lemma:como>|PRP<lemma:como>|CONJ<lemma:como> NOUN
					@temp = ($listTags =~ /($NOUN$a2)($ADV${l}lemma:como\|${r}|$PRP${l}lemma:como\|${r}|$CONJ${l}lemma:como\|${r})($NOUN$a2)/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUN$a2)($ADV${l}lemma:como\|${r}|$PRP${l}lemma:como\|${r}|$CONJ${l}lemma:como\|${r})($NOUN$a2)/$1/g;

# CircR: VERB ADV<lemma:como>|PRP<lemma:como>|CONJ<lemma:como> NOUN
					@temp = ($listTags =~ /($VERB$a2)($ADV${l}lemma:como\|${r}|$PRP${l}lemma:como\|${r}|$CONJ${l}lemma:como\|${r})($NOUN$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($ADV${l}lemma:como\|${r}|$PRP${l}lemma:como\|${r}|$CONJ${l}lemma:como\|${r})($NOUN$a2)/$1/g;

# TermR: PRP<nomin:yes> NOUNSINGLE|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($PRP${l}nomin:yes\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($PRP${l}nomin:yes\|${r})($NOUNSINGLE$a2|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# CoordL: NP [Fc] [NP] CONJ<(type:C)|(lemma:$CCord)> [NP]
# NEXT
# PunctL: [NP] Fc [NP] CONJ<(type:C)|(lemma:$CCord)> [NP]
# Recursivity: 10
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;

# CoordL: [Fc]? NP CONJ<(type:C)|(lemma:$CCord)> [NP]
# NEXT
# CoordR: [Fc]? [NP] CONJ<(type:C)|(lemma:$CCord)> NP
# Add: coord:noun
					@temp = ($listTags =~ /(?:$Fc$a2)?($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/g);
					$Rel =  "CoordR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$1$3/g;
					Add("HeadDep","coord:noun",\@temp);

# PunctL: Fc CONJ<coord:noun>
					@temp = ($listTags =~ /($Fc$a2)($CONJ${l}coord:noun\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($CONJ${l}coord:noun\|${r})/$2/g;

# CprepR: ADJ|ADV|DATE PRP NOUNCOORD|PRO<type:D|P|I|X|>
					@temp = ($listTags =~ /($ADJ$a2|$ADV$a2|$DATE$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X|)\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2|$ADV$a2|$DATE$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X|)\|${r})/$1/g;

# CprepR: ADJ|ADV|DATE PRP VERB<mode:N>
# NoUniq
					@temp = ($listTags =~ /($ADJ$a2|$ADV$a2|$DATE$a2)($PRP$a2)($VERB${l}mode:N\|${r})/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($ADJ$a2|$ADV$a2|$DATE$a2)($PRP$a2)($VERB${l}mode:N\|${r})/$1$2$3/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc|Fpa|Fca NOUNCOORD|PRO<type:D|P|I|X>|CARD [Fc|Fpt|Fct]
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc|Fpa|Fca] NOUNCOORD|PRO<type:D|P|I|X>|CARD Fc|Fpt|Fct
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc|Fpa|Fca] NOUNCOORD|PRO<type:D|P|I|X>|CARD [Fc|Fpt|Fct]
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)($Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)($Fc$a2|$Fpt$a2|$Fct$a2)/$1/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc|Fpa|Fca [PRP] NOUNCOORD|PRO<type:D|P|I|X>|CARD [Fc|Fpt|Fct]
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc|Fpa|Fca] [PRP] NOUNCOORD|PRO<type:D|P|I|X>|CARD Fc|Fpt|Fct
# NEXT
# CprepR: NOUNCOORD|PRO<type:D|P|I|X> [Fc|Fpa|Fca] PRP NOUNCOORD|PRO<type:D|P|I|X>|CARD [Fc|Fpt|Fct]
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)(?:$PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)(?:$PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)($Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)($Fc$a2|$Fpt$a2|$Fct$a2)/$1/g;

# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc|Fpa|Fca] VERB<mode:P> [X]? [X]? [X]? [X]? [X]? [X]? [X]? [X]? [X]? [X]? [Fc|Fpt|Fct]
# NoUniq
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)($VERB${l}mode:P\|${r})(?:$X$a2)?(?:$X$a2)?(?:$X$a2)?(?:$X$a2)?(?:$X$a2)?(?:$X$a2)?(?:$X$a2)?(?:$X$a2)?(?:$X$a2)?(?:$X$a2)?(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)($VERB${l}mode:P\|${r})($X$a2)?($X$a2)?($X$a2)?($X$a2)?($X$a2)?($X$a2)?($X$a2)?($X$a2)?($X$a2)?($X$a2)?($Fc$a2|$Fpt$a2|$Fct$a2)/$1$2$3$4$5$6$7$8$9$10$11$12$13$14/g;

# Single: [VERB<lemma:$SubcatClaus>]  [PRP<lemma:a>] [NOUNCOORD|PRO<type:D|P|I|X>] PRO<type:R>  [NOUNCOORD|PRO<type:D|P|I|X>]?  [VERB<mode:[^PNG]>]
# Corr: tag:CONJ, type:S
					@temp = ($listTags =~ /(?:$VERB${l}lemma:$SubcatClaus\|${r})(?:$PRP${l}lemma:a\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRO${l}type:R\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?(?:$VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatClaus\|${r})($PRP${l}lemma:a\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRO${l}type:R\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($VERB${l}mode:[^PNG]\|${r})/$1$2$3$4$5$6/g;
					Corr("Head","tag:CONJ,type:S",\@temp);

# Single: [VERB<lemma:$SubcatClaus>]  [ADJ] PRO<type:R>  [NOUNCOORD|PRO<type:D|P|I|X>]?  [VERB<mode:[^PNG]>]
# Corr: tag:CONJ, type:S
					@temp = ($listTags =~ /(?:$VERB${l}lemma:$SubcatClaus\|${r})(?:$ADJ$a2)($PRO${l}type:R\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?(?:$VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatClaus\|${r})($ADJ$a2)($PRO${l}type:R\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($VERB${l}mode:[^PNG]\|${r})/$1$2$3$4$5/g;
					Corr("Head","tag:CONJ,type:S",\@temp);

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc [PRO<type:R|W>|X<lemma:que|quien>] [NOUNCOORD|PRO<type:D|P|I|X>]  VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc] [PRO<type:R|W>|X<lemma:que|quien>] [NOUNCOORD|PRO<type:D|P|I|X>] VERB|CONJ<coord:verb>   Fc
# NEXT
# DobjL: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]? PRO<type:R|W>|X<lemma:que|quien> [NOUNCOORD|PRO<type:D|P|I|X>] VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc]? [PRO<type:R|W>|X<lemma:que|quien>] [NOUNCOORD|PRO<type:D|P|I|X>] VERB|CONJ<coord:verb>    [Fc]?
# NoUniq
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "DobjL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?/$1$2$3$4$5$6/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]? [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb> Fc
# NEXT
# SubjL: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]? PRO<type:R|W>|X<lemma:que|quien> VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc]? [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb>  [Fc]?
# NoUniq
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "SubjL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?/$1$2$3$4$5/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc [PRP] [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]?  [PRP] [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb> Fc
# NEXT
# CircL: [NOUNCOORD|PRO<type:D|P|I|X>]  [Fc]? PRP PRO<type:R|W>|X<lemma:que|quien> VERB|CONJ<coord:verb> [Fc]?
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc]? [PRP] [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb> [Fc]?
# NoUniq
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($PRP$a2)($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "CircL";
					RelDepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($PRP$a2)($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?/$1$2$3$4$5$6/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc [PRP] [PRO<type:R|W>|X<lemma:que|quien>] [NOUNCOORD|PRO<type:D|P|I|X>] VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]?  [PRP] [PRO<type:R|W>|X<lemma:que|quien>] [NOUNCOORD|PRO<type:D|P|I|X>] VERB|CONJ<coord:verb> Fc
# NEXT
# CircL: [NOUNCOORD|PRO<type:D|P|I|X>]  [Fc]? PRP PRO<type:R|W>|X<lemma:que|quien> [NOUNCOORD|PRO<type:D|P|I|X>] VERB|CONJ<coord:verb> [Fc]?
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc]? [PRP] [PRO<type:R|W>|PRO<lemma:que|quien>] [NOUNCOORD|PRO<type:D|P|I|X>] VERB|CONJ<coord:verb> [Fc]?
# NoUniq
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($PRP$a2)($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "CircL";
					RelDepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$PRO${l}lemma:(?:que|quien)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($PRP$a2)($PRO${l}type:(?:R|W)\|${r}|$PRO${l}lemma:(?:que|quien)\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?/$1$2$3$4$5$6$7/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc VERB<mode:[GP]>|CONJ<coord:verb>
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X>  [Fc]? VERB<mode:[GP]>|CONJ<coord:verb>
# NoUniq
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)($VERB${l}mode:[GP]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($VERB${l}mode:[GP]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($VERB${l}mode:[GP]\|${r}|$CONJ${l}coord:verb\|${r})/$1$2$3/g;

# CircR: VERB<mode:P> [NOUNCOORD|PRO<type:D|P|I|X>] PRP<lemma:por|by> NOUNCOORD|PRO<type:D|P|I|X>|ADV
					@temp = ($listTags =~ /($VERB${l}mode:P\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRP${l}lemma:(?:por|by)\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$ADV$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}mode:P\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRP${l}lemma:(?:por|by)\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$ADV$a2)/$1$2/g;

# PunctR: VERB Fc [NOUNCOORD|PRO<type:D|P|I|X>] [PRP<lemma:$PrepMA>] [CARD|DATE]
# NEXT
# CircR: VERB [Fc]? [NOUNCOORD|PRO<type:D|P|I|X>] PRP<lemma:$PrepMA> CARD|DATE
					@temp = ($listTags =~ /($VERB$a2)($Fc$a2)(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$PRP${l}lemma:$PrepMA\|${r})(?:$CARD$a2|$DATE$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)?(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRP${l}lemma:$PrepMA\|${r})($CARD$a2|$DATE$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)?($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRP${l}lemma:$PrepMA\|${r})($CARD$a2|$DATE$a2)/$1$3/g;

# PunctR: VERB Fc [PRP] [DATE]
# NEXT
# CircR: VERB [Fc]? PRP DATE
					@temp = ($listTags =~ /($VERB$a2)($Fc$a2)(?:$PRP$a2)(?:$DATE$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)?($PRP$a2)($DATE$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)?($PRP$a2)($DATE$a2)/$1/g;

# PunctL: [PRP] [DATE] Fc VERB
# NEXT
# CircL: PRP DATE [Fc]? VERB
					@temp = ($listTags =~ /(?:$PRP$a2)(?:$DATE$a2)($Fc$a2)($VERB$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($PRP$a2)($DATE$a2)(?:$Fc$a2)?($VERB$a2)/g);
					$Rel =  "CircL";
					RelDepHead($Rel,"",\@temp);
					$listTags =~ s/($PRP$a2)($DATE$a2)($Fc$a2)?($VERB$a2)/$4/g;

# PunctR: VERB Fc [PRP] [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]
# NEXT
# PunctR: VERB [Fc] [PRP] [NOUNCOORD|PRO<type:D|P|I|X>] Fc
# NEXT
# CircR: VERB [Fc] PRP NOUNCOORD|PRO<type:D|P|I|X> [Fc]
					@temp = ($listTags =~ /($VERB$a2)($Fc$a2)(?:$PRP$a2)(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)/$1/g;

# CprepR: CARD PRP<lemma:de|entre|sobre|of|about|between> NOUNCOORD|PRO
					@temp = ($listTags =~ /($CARD$a2)($PRP${l}lemma:(?:de|entre|sobre|of|about|between)\|${r})($NOUNCOORD|$PRO$a2)/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($CARD$a2)($PRP${l}lemma:(?:de|entre|sobre|of|about|between)\|${r})($NOUNCOORD|$PRO$a2)/$1/g;

# CprepR: PRO<type:P> PRP<lemma:de|of> NOUNCOORD|PRO
					@temp = ($listTags =~ /($PRO${l}type:P\|${r})($PRP${l}lemma:(?:de|of)\|${r})($NOUNCOORD|$PRO$a2)/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($PRO${l}type:P\|${r})($PRP${l}lemma:(?:de|of)\|${r})($NOUNCOORD|$PRO$a2)/$1/g;

# CprepR: NOUNCOORD [PRP] [PRO<type:D|P|I|X>] PRP NOUNCOORD|ADV
# NEXT
# CprepR: NOUNCOORD PRP PRO<type:D|P|I|X> [PRP] [NOUNCOORD|ADV]
					@temp = ($listTags =~ /($NOUNCOORD)(?:$PRP$a2)(?:$PRO${l}type:(?:D|P|I|X)\|${r})($PRP$a2)($NOUNCOORD|$ADV$a2)/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD)($PRP$a2)($PRO${l}type:(?:D|P|I|X)\|${r})(?:$PRP$a2)(?:$NOUNCOORD|$ADV$a2)/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD)($PRP$a2)($PRO${l}type:(?:D|P|I|X)\|${r})($PRP$a2)($NOUNCOORD|$ADV$a2)/$1/g;

# PrepR: VERB [NOUNCOORD|PRO<type:D|P|I|X>] CONJ<coord:cprep>
					@temp = ($listTags =~ /($VERB$a2)(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($CONJ${l}coord:cprep\|${r})/g);
					$Rel =  "PrepR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($CONJ${l}coord:cprep\|${r})/$1$2/g;

# PrepR: NOUNCOORD|PRO<type:D|P|I|X> CONJ<coord:cprep>
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($CONJ${l}coord:cprep\|${r})/g);
					$Rel =  "PrepR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($CONJ${l}coord:cprep\|${r})/$1/g;

# SubjL: PRO<sust:yes>  VERB
# Add: nomin:yes
# Inherit: number, person
					@temp = ($listTags =~ /($PRO${l}sust:yes\|${r})($VERB$a2)/g);
					$Rel =  "SubjL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRO${l}sust:yes\|${r})($VERB$a2)/$2/g;
					Inherit("DepHead","number,person",\@temp);
					Add("DepHead","nomin:yes",\@temp);

# SubjL: [PRO<sust:yes>] NOUNCOORD|PRO<type:D|P|I|X> VERB
# NEXT
# DobjL: PRO<sust:yes> [NOUNCOORD|PRO<type:D|P|I|X>] VERB
# Add: nomin:yes
# Inherit: number, person
					@temp = ($listTags =~ /(?:$PRO${l}sust:yes\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2)/g);
					$Rel =  "SubjL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($PRO${l}sust:yes\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2)/g);
					$Rel =  "DobjL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($PRO${l}sust:yes\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB$a2)/$3/g;
					Inherit("DepHead","number,person",\@temp);
					Add("DepHead","nomin:yes",\@temp);

# SubjR: VERB<lemma:$VS> NOUNCOORD|PRO<type:D|P|I|X>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}lemma:$VS\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}lemma:$VS\|${r})($NOUNCOORD|$PRO${l}concord:1${b2}type:(?:D|P|I|X)\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# SubjR: VERB<se:yes&lemma:$VSrefleja> NOUNCOORD|PRO<type:D|P|I|X>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}lemma:$VSrefleja\|${b2}se:yes\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}lemma:$VSrefleja\|${b2}se:yes\|${r})($NOUNCOORD|$PRO${l}concord:1${b2}type:(?:D|P|I|X)\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# SubjR: VERB<ind:yes&lemma:$VSind> NOUNCOORD|PRO<type:D|P|I|X>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}ind:yes\|${b2}lemma:$VSind\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}ind:yes\|${b2}lemma:$VSind\|${r})($NOUNCOORD|$PRO${l}concord:1${b2}type:(?:D|P|I|X)\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# DobjPrepR: VERB<lemma:$SubcatTr> PRP<lemma:a> NOUNCOORD|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatTr\|${r})($PRP${l}lemma:a\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "DobjPrepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatTr\|${r})($PRP${l}lemma:a\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# AtrR: VERB<lemma:ser> NOUNCOORD|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($VERB${l}lemma:ser\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "AtrR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:ser\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# AtrR: VERB ADJ|CONJ<coord:adj>
					@temp = ($listTags =~ /($VERB$a2)($ADJ$a2|$CONJ${l}coord:adj\|${r})/g);
					$Rel =  "AtrR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($ADJ$a2|$CONJ${l}coord:adj\|${r})/$1/g;

# DobjR: VERB CARD|NOUN|CONJ<coord:noun>|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($VERB$a2)($CARD$a2|$NOUN$a2|$CONJ${l}coord:noun\|${r}|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "DobjR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($CARD$a2|$NOUN$a2|$CONJ${l}coord:noun\|${r}|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# IobjR: VERB<lemma:($SubcatIND)|(SubcatBitr)>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:a> NOUNCOORD|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatIND\|${r}|$VERB${l}SubcatBitr\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:a\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "IobjR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatIND\|${r}|$VERB${l}SubcatBitr\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:a\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatA>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:a> NOUNCOORD|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatA\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:a\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatA\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:a\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatEN>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:en> NOUNCOORD|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatEN\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:en\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatEN\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:en\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatDE>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:de> NOUNCOORD|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatDE\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:de\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatDE\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:de\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatCON>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:con> NOUNCOORD|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatCON\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:con\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatCON\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:con\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatPOR>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:por> NOUNCOORD|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatPOR\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:por\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatPOR\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:por\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatHACIA>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:hacia> NOUNCOORD|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatHACIA\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:hacia\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatHACIA\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:hacia\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatSOBRE>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:sobre> NOUNCOORD|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatSOBRE\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:sobre\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatSOBRE\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:sobre\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CoordL: NP [Fc] [NP] CONJ<(type:C)|(lemma:$CCord)> [NP]
# NEXT
# PunctL: [NP] Fc [NP] CONJ<(type:C)|(lemma:$CCord)> [NP]
# Recursivity: 5
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;

# CoordL: [Fc]? NP CONJ<(type:C)|(lemma:$CCord)> [NP]
# NEXT
# CoordR: [Fc]? [NP] CONJ<(type:C)|(lemma:$CCord)> NP
# Add: coord:noun
					@temp = ($listTags =~ /(?:$Fc$a2)?($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/g);
					$Rel =  "CoordR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$1$3/g;
					Add("HeadDep","coord:noun",\@temp);

# PunctL: Fc CONJ<coord:noun>
					@temp = ($listTags =~ /($Fc$a2)($CONJ${l}coord:noun\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($CONJ${l}coord:noun\|${r})/$2/g;

# CoordL: VERB<nomin:no> [Fc] [VERB<nomin:no>] CONJ<(type:C)|(lemma:$CCord)> [VERB<nomin:no>]
# NEXT
# PunctL: [VERB<nomin:no>] Fc [VERB<nomin:no>] CONJ<(type:C)|(lemma:$CCord)> [VERB<nomin:no>]
# Recursivity: 5
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;

# CoordL: [Fc]? VERB<nomin:no> CONJ<(type:C)|(lemma:$CCord)> [VERB<nomin:no>]
# NEXT
# CoordR: [Fc]? [VERB<nomin:no>] CONJ<(type:C)|(lemma:$CCord)> VERB<nomin:no>
# Add: coord:verb
# Inherit: mode, tense
					@temp = ($listTags =~ /(?:$Fc$a2)?($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$1$3/g;
					Inherit("HeadDep","mode,tense",\@temp);
					Add("HeadDep","coord:verb",\@temp);

# PunctL: Fc CONJ<coord:verb>
					@temp = ($listTags =~ /($Fc$a2)($CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($CONJ${l}coord:verb\|${r})/$2/g;

# CircR: [VERB|CONJ<coord:verb>] [PRP] VERB|CONJ<coord:verb> [PRP] [CARD|NOUNCOORD|PRO<type:D|P|I|X>] PRP CARD|NOUNCOORD|PRO<type:D|P|I|X>
# Recursivity: 1
					@temp = ($listTags =~ /(?:$VERB$a2|$CONJ${l}coord:verb\|${r})(?:$PRP$a2)($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$PRP$a2)(?:$CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRP$a2)($CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRP$a2)($CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3$4$5/g;
					@temp = ($listTags =~ /(?:$VERB$a2|$CONJ${l}coord:verb\|${r})(?:$PRP$a2)($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$PRP$a2)(?:$CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRP$a2)($CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($PRP$a2)($CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$3$4$5/g;

# CircR: [VERB|CONJ<coord:verb>] [PRP] VERB|CONJ<coord:verb> PRP CARD|NOUNCOORD|PRO<type:D|P|I|X>
# NEXT
# CircR: VERB|CONJ<coord:verb> PRP VERB|CONJ<coord:verb> [PRP] [CARD|NOUNCOORD|PRO<type:D|P|I|X>]
					@temp = ($listTags =~ /(?:$VERB$a2|$CONJ${l}coord:verb\|${r})(?:$PRP$a2)($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$PRP$a2)(?:$CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($CARD$a2|$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# CircR: VERB|CONJ<coord:verb>  PRP VERB<mode:[^PG]>|ADV|CARD
# Recursivity: 1
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($VERB${l}mode:[^PG]\|${r}|$ADV$a2|$CARD$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($VERB${l}mode:[^PG]\|${r}|$ADV$a2|$CARD$a2)/$1/g;
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($VERB${l}mode:[^PG]\|${r}|$ADV$a2|$CARD$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($VERB${l}mode:[^PG]\|${r}|$ADV$a2|$CARD$a2)/$1/g;

# SpecL: [VERB|CONJ<coord:verb>]  [PRP] DET<type:A>  VERB<mode:N>|ADV|CARD
# NEXT
# CircR: VERB|CONJ<coord:verb>  PRP  [DET<type:A>] VERB<mode:N>|ADV|CARD
# Recursivity: 1
					@temp = ($listTags =~ /(?:$VERB$a2|$CONJ${l}coord:verb\|${r})(?:$PRP$a2)($DET${l}type:A\|${r})($VERB${l}mode:N\|${r}|$ADV$a2|$CARD$a2)/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)(?:$DET${l}type:A\|${r})($VERB${l}mode:N\|${r}|$ADV$a2|$CARD$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($DET${l}type:A\|${r})($VERB${l}mode:N\|${r}|$ADV$a2|$CARD$a2)/$1/g;
					@temp = ($listTags =~ /(?:$VERB$a2|$CONJ${l}coord:verb\|${r})(?:$PRP$a2)($DET${l}type:A\|${r})($VERB${l}mode:N\|${r}|$ADV$a2|$CARD$a2)/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)(?:$DET${l}type:A\|${r})($VERB${l}mode:N\|${r}|$ADV$a2|$CARD$a2)/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($DET${l}type:A\|${r})($VERB${l}mode:N\|${r}|$ADV$a2|$CARD$a2)/$1/g;

# CircR: VERB|CONJ<coord:verb> PRP NOUNCOORD|PRO<type:D|P|I|X>
# Recursivity: 1
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# PunctR: VERB Fc [PRP] [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]?
# NEXT
# PunctR: VERB [Fc] [PRP] [NOUNCOORD|PRO<type:D|P|I|X>] Fc
# NEXT
# TermR: [VERB] [Fc] PRP NOUNCOORD|PRO<type:D|P|I|X> [Fc]?
# NEXT
# CircR: VERB [Fc] PRP NOUNCOORD|PRO<type:D|P|I|X> [Fc]?
# Recursivity:1
					@temp = ($listTags =~ /($VERB$a2)($Fc$a2)(?:$PRP$a2)(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB$a2)(?:$Fc$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?/$1/g;
					@temp = ($listTags =~ /($VERB$a2)($Fc$a2)(?:$PRP$a2)(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)(?:$PRP$a2)(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB$a2)(?:$Fc$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?/$1/g;

# PunctL: [PRP<pos:0>] [NOUNCOORD|PRO<type:D|P|I|X>] Fc  VERB<mode:[^PNG]>|CONJ<coord:verb>
# NEXT
# CircL: PRP<pos:0> NOUNCOORD|PRO<type:D|P|I|X> [Fc]?  VERB<mode:[^PNG]>|CONJ<coord:verb>
					@temp = ($listTags =~ /(?:$PRP${l}pos:0\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($PRP${l}pos:0\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "CircL";
					RelDepHead($Rel,"",\@temp);
					$listTags =~ s/($PRP${l}pos:0\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/$4/g;

# PunctL: Fc [PRP] [NOUNCOORD|PRO<type:D|P|I|X> ] [Fc]?  VERB<mode:[^PNG]>|CONJ<coord:verb>
# NEXT
# PunctL: [Fc]? [PRP] [NOUNCOORD|PRO<type:D|P|I|X> ] Fc  VERB<mode:[^PNG]>|CONJ<coord:verb>
# NEXT
# CircL: [Fc]? PRP NOUNCOORD|PRO<type:D|P|I|X>  [Fc]?  VERB<mode:[^PNG]>|CONJ<coord:verb>
# Recursivity:1
					@temp = ($listTags =~ /($Fc$a2)(?:$PRP$a2)([NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(])(?:$Fc$a2)?($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$PRP$a2)([NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(])($Fc$a2)($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "CircL";
					RelDepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/$5/g;
					@temp = ($listTags =~ /($Fc$a2)(?:$PRP$a2)([NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(])(?:$Fc$a2)?($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$PRP$a2)([NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(])($Fc$a2)($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "CircL";
					RelDepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($VERB${l}mode:[^PNG]\|${r}|$CONJ${l}coord:verb\|${r})/$5/g;

# AtrR: VERB<lemma:$SubcatAtr>  VERB<mode:[PNG]>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatAtr\|${r})($VERB${l}mode:[PNG]\|${r})/g);
					$Rel =  "AtrR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatAtr\|${r})($VERB${l}mode:[PNG]\|${r})/$1/g;

# Circ2R: VERB VERB<mode:[GP]>
					@temp = ($listTags =~ /($VERB$a2)($VERB${l}mode:[GP]\|${r})/g);
					$Rel =  "Circ2R";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($VERB${l}mode:[GP]\|${r})/$1/g;

# SubjR: VERB<lemma:$VS> VERB<mode:N>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}lemma:$VS\|${r})($VERB${l}mode:N\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}lemma:$VS\|${r})($VERB${l}concord:1${b2}mode:N\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# SubjR: VERB<se:yes&lemma:$VSrefleja> VERB<mode:N>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}lemma:$VSrefleja\|${b2}se:yes\|${r})($VERB${l}mode:N\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}lemma:$VSrefleja\|${b2}se:yes\|${r})($VERB${l}concord:1${b2}mode:N\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# SubjR: VERB<ind:yes&lemma:$VSind> VERB<mode:N>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}ind:yes\|${b2}lemma:$VSind\|${r})($VERB${l}mode:N\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}ind:yes\|${b2}lemma:$VSind\|${r})($VERB${l}concord:1${b2}mode:N\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# DobjR: VERB VERB<mode:N>
					@temp = ($listTags =~ /($VERB$a2)($VERB${l}mode:N\|${r})/g);
					$Rel =  "DobjR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($VERB${l}mode:N\|${r})/$1/g;

# AdjnR:  VERB<mode:[^PNG]> DATE
					@temp = ($listTags =~ /($VERB${l}mode:[^PNG]\|${r})($DATE$a2)/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}mode:[^PNG]\|${r})($DATE$a2)/$1/g;

# PunctL: Fc [DATE] VERB<mode:[^PNG]>
# NEXT
# AdjnL:  [Fc]? DATE VERB<mode:[^PNG]>
					@temp = ($listTags =~ /($Fc$a2)(?:$DATE$a2)($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?($DATE$a2)($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($DATE$a2)($VERB${l}mode:[^PNG]\|${r})/$3/g;

# CprepR: NOUNCOORD PRP NOUNCOORD
					@temp = ($listTags =~ /($NOUNCOORD)($PRP$a2)($NOUNCOORD)/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD)($PRP$a2)($NOUNCOORD)/$1/g;

# Single: [VERB<lemma:$SubcatClaus>]  PRO<type:R>  [NOUNCOORD|PRO<type:D|P|I|X>]?  [VERB<mode:[^PNG]>]
# Corr: tag:CONJ, type:S
					@temp = ($listTags =~ /(?:$VERB${l}lemma:$SubcatClaus\|${r})($PRO${l}type:R\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?(?:$VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "Single";
					Head($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatClaus\|${r})($PRO${l}type:R\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($VERB${l}mode:[^PNG]\|${r})/$1$2$3$4/g;
					Corr("Head","tag:CONJ,type:S",\@temp);

# SpecL: [VERB] CONJ<lemma:que|si> VERB<mode:[^PNG]>
# NEXT
# DobjR: VERB  [CONJ<lemma:que|si>] VERB<mode:[^PNG]>
					@temp = ($listTags =~ /(?:$VERB$a2)($CONJ${l}lemma:(?:que|si)\|${r})($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$CONJ${l}lemma:(?:que|si)\|${r})($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "DobjR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($CONJ${l}lemma:(?:que|si)\|${r})($VERB${l}mode:[^PNG]\|${r})/$1/g;

# SpecL: [VERB]  CONJ<lemma:que|si>  [NOUNCOORD|PRO<type:D|P|I|X>] VERB<mode:[^PNG]>
# NEXT
# SubjL:  [VERB]  [CONJ<lemma:que|si>]  NOUNCOORD|PRO<type:D|P|I|X> VERB<mode:[^PNG]>
# NEXT
# DobjR: VERB   [CONJ<lemma:que|si>] [NOUNCOORD|PRO<type:D|P|I|X>] VERB<mode:[^PNG]>
					@temp = ($listTags =~ /(?:$VERB$a2)($CONJ${l}lemma:(?:que|si)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB$a2)(?:$CONJ${l}lemma:(?:que|si)\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "SubjL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)(?:$CONJ${l}lemma:(?:que|si)\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "DobjR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($CONJ${l}lemma:(?:que|si)\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB${l}mode:[^PNG]\|${r})/$1/g;

# SpecL: [VERB] [PRP] CONJ<lemma:que> VERB<mode:[^PNG]>
# NEXT
# CircR: VERB PRP [CONJ<lemma:que>] VERB<mode:[^PNG]>
					@temp = ($listTags =~ /(?:$VERB$a2)(?:$PRP$a2)($CONJ${l}lemma:que\|${r})($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "SpecL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($VERB$a2)($PRP$a2)(?:$CONJ${l}lemma:que\|${r})($VERB${l}mode:[^PNG]\|${r})/g);
					$Rel =  "CircR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($PRP$a2)($CONJ${l}lemma:que\|${r})($VERB${l}mode:[^PNG]\|${r})/$1/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc|Fpa|Fca VERB [Fc|Fpt|Fct]
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc|Fpa|Fca] VERB Fc|Fpt|Fct
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc|Fpa|Fca] VERB [Fc|Fpt|Fct]
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)($VERB$a2)(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)($VERB$a2)($Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)($VERB$a2)(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)($VERB$a2)($Fc$a2|$Fpt$a2|$Fct$a2)/$1/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc|Fpa|Fca [PRP] NOUNCOORD|PRO<type:D|P|I|X>|CARD [Fc|Fpt|Fct]
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc|Fpa|Fca] [PRP] NOUNCOORD|PRO<type:D|P|I|X>|CARD Fc|Fpt|Fct
# NEXT
# CprepR: NOUNCOORD|PRO<type:D|P|I|X> [Fc|Fpa|Fca] PRP NOUNCOORD|PRO<type:D|P|I|X>|CARD [Fc|Fpt|Fct]
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)(?:$PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)(?:$PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)($Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2|$Fpa$a2|$Fca$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)(?:$Fc$a2|$Fpt$a2|$Fct$a2)/g);
					$Rel =  "CprepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2|$Fpa$a2|$Fca$a2)($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$CARD$a2)($Fc$a2|$Fpt$a2|$Fct$a2)/$1/g;

# AdjnL: [Fc] VERB<mode:P> [Fc] VERB
# NEXT
# PunctL: Fc [VERB<mode:P>] [Fc] VERB
# NEXT
# PunctL: [Fc] [VERB<mode:P>] Fc VERB
					@temp = ($listTags =~ /(?:$Fc$a2)($VERB${l}mode:P\|${r})(?:$Fc$a2)($VERB$a2)/g);
					$Rel =  "AdjnL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($Fc$a2)(?:$VERB${l}mode:P\|${r})(?:$Fc$a2)($VERB$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)(?:$VERB${l}mode:P\|${r})($Fc$a2)($VERB$a2)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($VERB${l}mode:P\|${r})($Fc$a2)($VERB$a2)/$4/g;

# CoordL: NP [Fc] [NP] CONJ<(type:C)|(lemma:$CCord)> [NP]
# NEXT
# PunctL: [NP] Fc [NP] CONJ<(type:C)|(lemma:$CCord)> [NP]
# Recursivity: 10
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;
					@temp = ($listTags =~ /($NP)(?:$Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NP)($Fc$a2)(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NP)($Fc$a2)($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$3$4$5/g;

# CoordL: [Fc]? NP CONJ<(type:C)|(lemma:$CCord)> [NP]
# NEXT
# CoordR: [Fc]? [NP] CONJ<(type:C)|(lemma:$CCord)> NP
# Add: coord:noun
					@temp = ($listTags =~ /(?:$Fc$a2)?($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$NP)/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/g);
					$Rel =  "CoordR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($NP)($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($NP)/$1$3/g;
					Add("HeadDep","coord:noun",\@temp);

# PunctL: Fc CONJ<coord:noun>
					@temp = ($listTags =~ /($Fc$a2)($CONJ${l}coord:noun\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($CONJ${l}coord:noun\|${r})/$2/g;

# CoordL: VERB<nomin:no> [Fc] [VERB<nomin:no>] CONJ<(type:C)|(lemma:$CCord)> [VERB<nomin:no>]
# NEXT
# PunctL: [VERB<nomin:no>] Fc [VERB<nomin:no>] CONJ<(type:C)|(lemma:$CCord)> [VERB<nomin:no>]
# Recursivity: 5
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;
					@temp = ($listTags =~ /($VERB${l}nomin:no\|${r})(?:$Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$VERB${l}nomin:no\|${r})($Fc$a2)(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}nomin:no\|${r})($Fc$a2)($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$3$4$5/g;

# CoordL: [Fc]? VERB<nomin:no> CONJ<(type:C)|(lemma:$CCord)> [VERB<nomin:no>]
# NEXT
# CoordR: [Fc]? [VERB<nomin:no>] CONJ<(type:C)|(lemma:$CCord)> VERB<nomin:no>
# Add: coord:verb
# Inherit: mode, tense
					@temp = ($listTags =~ /(?:$Fc$a2)?($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})(?:$VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$Fc$a2)?(?:$VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/g);
					$Rel =  "CoordR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)?($VERB${l}nomin:no\|${r})($CONJ${l}type:C\|${r}|$CONJ${l}lemma:$CCord\|${r})($VERB${l}nomin:no\|${r})/$1$3/g;
					Inherit("HeadDep","mode,tense",\@temp);
					Add("HeadDep","coord:verb",\@temp);

# PunctL: Fc CONJ<coord:verb>
					@temp = ($listTags =~ /($Fc$a2)($CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($Fc$a2)($CONJ${l}coord:verb\|${r})/$2/g;

# SubjL: NOUN<type:P> VERB<mode:[^PG]>|CONJ<coord:verb&mode:[^PG]>
# Add: adsubj:yes
					@temp = ($listTags =~ /($NOUN${l}type:P\|${r})($VERB${l}mode:[^PG]\|${r}|$CONJ${l}coord:verb\|${b2}mode:[^PG]\|${r})/g);
					$Rel =  "SubjL";
					DepHead($Rel,"",\@temp);
					$listTags =~ s/($NOUN${l}type:P\|${r})($VERB${l}mode:[^PG]\|${r}|$CONJ${l}coord:verb\|${b2}mode:[^PG]\|${r})/$2/g;
					Add("DepHead","adsubj:yes",\@temp);

# SubjL: NOMINAL|PRO<type:D|P|I|X> VERB<mode:[^PG]>|CONJ<coord:verb&mode:[^PG]>
# Agreement: person, number
# Add: adsubj:yes
					@temp = ($listTags =~ /($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})($VERB${l}mode:[^PG]\|${r}|$CONJ${l}coord:verb\|${b2}mode:[^PG]\|${r})/g);
					$Rel =  "SubjL";
					DepHead($Rel,"person,number",\@temp);
					$listTags =~ s/($NOMINAL|$PRO${l}concord:1${b2}type:(?:D|P|I|X)\|${r})($VERB${l}concord:1${b2}mode:[^PG]\|${r}|$CONJ${l}concord:1${b2}coord:verb\|${b2}mode:[^PG]\|${r})/$2/g;
					$listTags =~ s/concord:[01]\|//g;
					Add("DepHead","adsubj:yes",\@temp);

# SubjR: VERB<lemma:$VS> NOMINAL|PRO<type:D|P|I|X>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}lemma:$VS\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}lemma:$VS\|${r})($NOMINAL|$PRO${l}concord:1${b2}type:(?:D|P|I|X)\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# SubjR: VERB<se:yes&lemma:$VSrefleja> NOMINAL|PRO<type:D|P|I|X>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}lemma:$VSrefleja\|${b2}se:yes\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}lemma:$VSrefleja\|${b2}se:yes\|${r})($NOMINAL|$PRO${l}concord:1${b2}type:(?:D|P|I|X)\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# SubjR: VERB<ind:yes&lemma:$VSind> NOMINAL|PRO<type:D|P|I|X>
# Agr: number, person
					@temp = ($listTags =~ /($VERB${l}ind:yes\|${b2}lemma:$VSind\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "SubjR";
					HeadDep($Rel,"number,person",\@temp);
					$listTags =~ s/($VERB${l}concord:1${b2}ind:yes\|${b2}lemma:$VSind\|${r})($NOMINAL|$PRO${l}concord:1${b2}type:(?:D|P|I|X)\|${r})/$1/g;
					$listTags =~ s/concord:[01]\|//g;

# DobjPrepR: VERB<lemma:$SubcatTr> PRP<lemma:a> NOMINAL|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatTr\|${r})($PRP${l}lemma:a\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "DobjPrepR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatTr\|${r})($PRP${l}lemma:a\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# AtrR: VERB<lemma:ser> NOMINAL|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($VERB${l}lemma:ser\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "AtrR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:ser\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# DobjR: VERB NOMINAL|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($VERB$a2)($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "DobjR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})/$1/g;

# IobjR: VERB<lemma:($SubcatIND)|(SubcatBitr)>  [NOUNCOORD|PRO<type:D|P|I|X>]? PRP<lemma:a> NOMINAL|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatIND\|${r}|$VERB${l}SubcatBitr\|${r})(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:a\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "IobjR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatIND\|${r}|$VERB${l}SubcatBitr\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:a\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatA>  [NOMINAL|PRO<type:D|P|I|X>]? PRP<lemma:a> NOMINAL|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatA\|${r})(?:$NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:a\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatA\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:a\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatEN>  [NOMINAL|PRO<type:D|P|I|X>]? PRP<lemma:en> NOMINAL|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatEN\|${r})(?:$NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:en\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatEN\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:en\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatDE>  [NOMINAL|PRO<type:D|P|I|X>]? PRP<lemma:de> NOMINAL|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatDE\|${r})(?:$NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:de\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatDE\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:de\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatCON>  [NOMINAL|PRO<type:D|P|I|X>]? PRP<lemma:con> NOMINAL|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatCON\|${r})(?:$NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:con\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatCON\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:con\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatPOR>  [NOMINAL|PRO<type:D|P|I|X>]? PRP<lemma:por> NOMINAL|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatPOR\|${r})(?:$NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:por\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatPOR\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:por\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatHACIA>  [NOMINAL|PRO<type:D|P|I|X>]? PRP<lemma:hacia> NOMINAL|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatHACIA\|${r})(?:$NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:hacia\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatHACIA\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:hacia\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# CregR: VERB<lemma:$SubcatSOBRE>  [NOMINAL|PRO<type:D|P|I|X>]? PRP<lemma:sobre> NOMINAL|PRO<type:D|P|I|X>|VERB<mode:N>
					@temp = ($listTags =~ /($VERB${l}lemma:$SubcatSOBRE\|${r})(?:$NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:sobre\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/g);
					$Rel =  "CregR";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB${l}lemma:$SubcatSOBRE\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r})?($PRP${l}lemma:sobre\|${r})($NOMINAL|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB${l}mode:N\|${r})/$1$2/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc [PRO<type:R|W>|X<lemma:que|quien>] VERB<adsubj:yes>|CONJ<adsubj:yes&coord:verb>    [Fc]?
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]? [PRO<type:R|W>|X<lemma:que|quien>] VERB<adsubj:yes>|CONJ<adsubj:yes&coord:verb>   Fc
# NEXT
# DobjL: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]? PRO<type:R|W>|X<lemma:que|quien> VERB<adsubj:yes>|CONJ<adsubj:yes&coord:verb>    [Fc]?
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc]? [PRO<type:R|W>|X<lemma:que|quien>] VERB<adsubj:yes>|CONJ<adsubj:yes&coord:verb>    [Fc]?
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB${l}adsubj:yes\|${r}|$CONJ${l}adsubj:yes\|${b2}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB${l}adsubj:yes\|${r}|$CONJ${l}adsubj:yes\|${b2}coord:verb\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB${l}adsubj:yes\|${r}|$CONJ${l}adsubj:yes\|${b2}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "DobjL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB${l}adsubj:yes\|${r}|$CONJ${l}adsubj:yes\|${b2}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB${l}adsubj:yes\|${r}|$CONJ${l}adsubj:yes\|${b2}coord:verb\|${r})($Fc$a2)?/$1/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]? [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb> Fc
# NEXT
# SubjL: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]? PRO<type:R|W>|X<lemma:que|quien> VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc]? [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb>  [Fc]?
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "SubjL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?/$1/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc [PRP] [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb>   [Fc]?
# NEXT
# PunctR: [NOUNCOORD|PRO<type:D|P|I|X>] [Fc]?  [PRP] [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb> Fc
# NEXT
# CircL: [NOUNCOORD|PRO<type:D|P|I|X>]  [Fc]? PRP PRO<type:R|W>|X<lemma:que|quien> VERB|CONJ<coord:verb> [Fc]?
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc]? [PRP] [PRO<type:R|W>|X<lemma:que|quien>] VERB|CONJ<coord:verb> [Fc]?
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)/g);
					$Rel =  "PunctR";
					HeadDep($Rel,"",\@temp);
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($PRP$a2)($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "CircL";
					RelDepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?(?:$PRP$a2)(?:$PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($PRP$a2)($PRO${l}type:(?:R|W)\|${r}|$X${l}lemma:(?:que|quien)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?/$1/g;

# PunctL: [NOUNCOORD|PRO<type:D|P|I|X>] Fc VERB<mode:[GP]>|CONJ<coord:verb>
# NEXT
# AdjnR: NOUNCOORD|PRO<type:D|P|I|X> [Fc]? VERB<mode:[GP]>|CONJ<coord:verb>
					@temp = ($listTags =~ /(?:$NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)($VERB${l}mode:[GP]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "PunctL";
					DepHead($Rel,"",\@temp);
					@temp = ($listTags =~ /($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($VERB${l}mode:[GP]\|${r}|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "AdjnR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($VERB${l}mode:[GP]\|${r}|$CONJ${l}coord:verb\|${r})/$1/g;

# BipolarAdversativa2R: VERB [Fc]? CONJ<lemma:pero|mas|ahora\@bien|solo\@que|sacando\@que|quitando\@que|excepto\@que|aún\@así|a\@pesar\@de|sin\@embargo|sino\@que|ahora\@que> [Fc]? VERB
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)?($CONJ${l}lemma:(?:pero|mas|ahora\@bien|solo\@que|sacando\@que|quitando\@que|excepto\@que|aún\@así|a\@pesar\@de|sin\@embargo|sino\@que|ahora\@que)\|${r})(?:$Fc$a2)?($VERB$a2)/g);
					$Rel =  "BipolarAdversativa2R";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)?($CONJ${l}lemma:(?:pero|mas|ahora\@bien|solo\@que|sacando\@que|quitando\@que|excepto\@que|aún\@así|a\@pesar\@de|sin\@embargo|sino\@que|ahora\@que)\|${r})($Fc$a2)?($VERB$a2)/$1$2$4/g;

# BipolarAdversativa1L: VERB [Fc]? CONJ<lemma:pero|mas|ahora\@bien|solo\@que|sacando\@que|quitando\@que|excepto\@que|aún\@así|a\@pesar\@de|sin\@embargo|sino\@que|ahora\@que> [Fc]? VERB
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)?($CONJ${l}lemma:(?:pero|mas|ahora\@bien|solo\@que|sacando\@que|quitando\@que|excepto\@que|aún\@así|a\@pesar\@de|sin\@embargo|sino\@que|ahora\@que)\|${r})(?:$Fc$a2)?($VERB$a2)/g);
					$Rel =  "BipolarAdversativa1L";
					RelDepHead($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)?($CONJ${l}lemma:(?:pero|mas|ahora\@bien|solo\@que|sacando\@que|quitando\@que|excepto\@que|aún\@así|a\@pesar\@de|sin\@embargo|sino\@que|ahora\@que)\|${r})($Fc$a2)?($VERB$a2)/$2$4$5/g;

# BipolarConcesiva2R: VERB [Fc]? CONJ<lemma:mismo\@si|mismo\@que|aunque|a\@menos\@que|a\@pesar\@de|a\@pesar\@que> [Fc]? VERB
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)?($CONJ${l}lemma:(?:mismo\@si|mismo\@que|aunque|a\@menos\@que|a\@pesar\@de|a\@pesar\@que)\|${r})(?:$Fc$a2)?($VERB$a2)/g);
					$Rel =  "BipolarConcesiva2R";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)?($CONJ${l}lemma:(?:mismo\@si|mismo\@que|aunque|a\@menos\@que|a\@pesar\@de|a\@pesar\@que)\|${r})($Fc$a2)?($VERB$a2)/$1$2$4/g;

# BipolarConcesiva1L: CONJ<lemma:mismo\@si|mismo\@que|aunque|a\@menos\@que|a\@pesar\@de|a\@pesar\@que> VERB [Fc]? VERB
					@temp = ($listTags =~ /($CONJ${l}lemma:(?:mismo\@si|mismo\@que|aunque|a\@menos\@que|a\@pesar\@de|a\@pesar\@que)\|${r})($VERB$a2)(?:$Fc$a2)?($VERB$a2)/g);
					$Rel =  "BipolarConcesiva1L";
					RelDepHead($Rel,"",\@temp);
					$listTags =~ s/($CONJ${l}lemma:(?:mismo\@si|mismo\@que|aunque|a\@menos\@que|a\@pesar\@de|a\@pesar\@que)\|${r})($VERB$a2)($Fc$a2)?($VERB$a2)/$3$4/g;

# BipolarNCausal1L:  CONJ<loc:causalprep> NOUNCOORD|PRO<type:D|P|I|X>   [Fc]?  VERB|CONJ<coord:verb>
					@temp = ($listTags =~ /($CONJ${l}loc:causalprep\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})(?:$Fc$a2)?($VERB$a2|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "BipolarNCausal1L";
					RelDepHead($Rel,"",\@temp);
					$listTags =~ s/($CONJ${l}loc:causalprep\|${r})($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})($Fc$a2)?($VERB$a2|$CONJ${l}coord:verb\|${r})/$3$4/g;

# BipolarNCausal2R: VERB|CONJ<coord:verb>  [Fc]? CONJ<loc:causalprep> [Fc]?  NOUNCOORD|PRO<type:D|P|I|X>
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?($CONJ${l}loc:causalprep\|${r})(?:$Fc$a2)?($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/g);
					$Rel =  "BipolarNCausal2R";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?($CONJ${l}loc:causalprep\|${r})($Fc$a2)?($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r})/$1$2$4/g;

# BipolarCausal1L:  CONJ<loc:causal>|CONJ<lemma:porque|pues> VERB|CONJ<coord:verb>  [Fc]?  VERB|CONJ<coord:verb>
					@temp = ($listTags =~ /($CONJ${l}loc:causal\|${r}|$CONJ${l}lemma:(?:porque|pues)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?($VERB$a2|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "BipolarCausal1L";
					RelDepHead($Rel,"",\@temp);
					$listTags =~ s/($CONJ${l}loc:causal\|${r}|$CONJ${l}lemma:(?:porque|pues)\|${r})($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?($VERB$a2|$CONJ${l}coord:verb\|${r})/$3$4/g;

# BipolarCausal2R: VERB|CONJ<coord:verb> [Fc]? CONJ<loc:causal>|CONJ<lemma:porque|pues> [Fc]?   VERB|CONJ<coord:verb>
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?($CONJ${l}loc:causal\|${r}|$CONJ${l}lemma:(?:porque|pues)\|${r})(?:$Fc$a2)?($VERB$a2|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "BipolarCausal2R";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?($CONJ${l}loc:causal\|${r}|$CONJ${l}lemma:(?:porque|pues)\|${r})($Fc$a2)?($VERB$a2|$CONJ${l}coord:verb\|${r})/$1$2$4/g;

# BipolarConsequence2R: VERB|CONJ<coord:verb>  [Fc]? CONJ<loc:conseq>|CONJ<lemma:luego> [Fc]?  VERB|CONJ<coord:verb>
					@temp = ($listTags =~ /($VERB$a2|$CONJ${l}coord:verb\|${r})(?:$Fc$a2)?($CONJ${l}loc:conseq\|${r}|$CONJ${l}lemma:luego\|${r})(?:$Fc$a2)?($VERB$a2|$CONJ${l}coord:verb\|${r})/g);
					$Rel =  "BipolarConsequence2R";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2|$CONJ${l}coord:verb\|${r})($Fc$a2)?($CONJ${l}loc:conseq\|${r}|$CONJ${l}lemma:luego\|${r})($Fc$a2)?($VERB$a2|$CONJ${l}coord:verb\|${r})/$1$2$4/g;

# Bipolar2R: VERB  [Fc]? CONJ<type:S> [Fc]?   VERB
					@temp = ($listTags =~ /($VERB$a2)(?:$Fc$a2)?($CONJ${l}type:S\|${r})(?:$Fc$a2)?($VERB$a2)/g);
					$Rel =  "Bipolar2R";
					HeadRelDep($Rel,"",\@temp);
					$listTags =~ s/($VERB$a2)($Fc$a2)?($CONJ${l}type:S\|${r})($Fc$a2)?($VERB$a2)/$1$2$4/g;

# TermR: PRP NOUNCOORD|PRO<type:D|P|I|X>|VERB
# NoUniq
					@temp = ($listTags =~ /($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB$a2)/g);
					$Rel =  "TermR";
					HeadDep($Rel,"",\@temp);
					$listTags =~ s/($PRP$a2)($NOUNCOORD|$PRO${l}type:(?:D|P|I|X)\|${r}|$VERB$a2)/$1$2/g;

