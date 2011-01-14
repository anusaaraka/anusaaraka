
(defrule hollow0
(declare (salience 5000))
(id-root ?id hollow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KoKalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hollow.clp 	hollow0   "  ?id "  KoKalA )" crlf))
)

(defrule hollow1
(declare (salience 4900))
(id-root ?id hollow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KoKalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hollow.clp 	hollow1   "  ?id "  KoKalA )" crlf))
)

;"hollow","Adj","1.KoKalA"
;yaha bAzsa 'hollow' hE.
;
;LEVEL 
;Headword : hollow
;
;Examples --
;
;1. "KoKalA" 
;  (a)  The termites have eaten the tree hollow.
;       xImaka ne pedZa ko KA kara KoKalA kara xiyA
;  (b)  They heard a strange hollow groan at night.
;       rAwa meM unheM eka ajIba KoKalI karAha sunAI xI
;  (c)  She could make out that he made a hollow promise.
;       use pawA cala gayA WA ki usakA vAxA KoKalA WA. 
;  (d)  We are not scared of your hollow threats.
;       wumhArI KoKalI XamakiyoM se hama nahIM darawe.
;   
;2. "picakA_huA"
;   Her cheeks have gone hollow after her illness.
;   usakI bImArI ke bAxa usake gAla picaka gaye hEM
;
;3. "gadDA"
;   The snake was sitting in the hollow at the edge of the garden.
;   sAzpa bagIce ke kinAre ke gadDe meM bETA WA.
;
;4. "CotI KAI" 
;   They lay in the shady hollow for many hours.
;   ve kaI GaNte CAyAxAra CotI KAI meM lete rahe.
;
;5. "baMxa_haWelI_ke_bIca_kI_jagaha"
;   She carefully held the little bird in the hollow of her hand.
;   usane CotI cidZiyA ko apane cullU meM XyAna se pakade raKA
;
;6. "kotara" 
;   The bird flew up && sat in the hollow of the tree.
;   cidZiyA udZa gayI Ora pedaz kI kotara meM bETa gayI.
;
;
;uparaliKiwa vAkyoM meM "hollow" ke viBinna prayogoM meM aXikawara "KoKalA" kA arWa
;A rahA hE, Ora hama ise mUlArWa mAna sakawe hEM. 
;
;vAkya 6. meM "hollow" kA jo arWa "kotara" A rahA hE. kotara meM KoKalA hone 
;kA prakqwiguNa howA hE. wo aba hama "KoKalA" ke arWa se "kotara" kA arWa prApwa 
;kara sakawe hEM.
;
;TIka isI waraha, vAkya 3. meM "hollow" kA jo arWa "gadDA" A rahA hE usakA
;BI eka prAkqwika guNa hE KoKalApana. wo aba hama "gadDA" ke arWa ko BI "KoKalA" ke
;arWa se prApwa kara sakawe hEM. 
;
;vAkya 2. meM, "hollow" kA prayoga , "picakA huA honA" ke arWa meM ho rahA hE.
;kisI vaswu meM picakane kI waBI guMjAiSa howI hE jaba vaha KoKalI ho, Ora koI vaswu
;jaba picaka jAwI hE, waba usameM gadDe ho jAwe hEM.
;wo aba, vAkya 3. meM "hollow" kA jo arWa prApwa ho rahA hE, usake saMyojana se 
;hama vAkya 2. ke saMxarBa meM "hollow" kA arWa "KoKalA" prApwa kara sakawe hEM.
;
;KoKalA -- > picakA huA -- > gadDA
;
;ina alaga xiKanevAle arWo meM "KoKalA" kA BAva isa prakAra samaJa sakawe hEM:
;
;
;                  KoKalA (guNI) 
;                    |                          
;                  KoKalA (guNa)  =   KoKalApana <--   
;                    |                        |  
;                    | (sAmarWya)             | (guNa)        
;                    |                        |
;                 picakA huA --------------gadDA
;          			(pariNAma)	
;
;							
;aba hama "hollow" kA arWa isa prakAra xe sakawe hEM :
;
;sUwra : KoKalA`
;
