
(defrule big0
(declare (salience 5000))
(id-root ?id big)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  big.clp 	big0   "  ?id "  badA )" crlf))
)

(defrule big1
(declare (salience 4900))
(id-root ?id big)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  big.clp 	big1   "  ?id "  badZA )" crlf))
)

;"big","Adj","1.badZA"
;There is a big ground behind our flat.
;--"2.umra_meM_badZI/badZA"
;My big sister's wedding will be solemnised in February.
;--"3.mahawvapUrNa"
;The last match is a big match for India.
;--"4.mahawvAkAMkRA"
;He has big ideas && plans in his mind.
;--"5.prasixXa"
;Cartoon network is a big among children.
;--"6.xayAlu"
;Its very big of him to donate half of his salary to the flood victims.
;--"7.uwwejiwa"
;They feel big about the world tour.
;
;
;LEVEL 
;
;
;               `big' sUwra (nibanXa)
;               -----
;
;`big' ke viviXa prayoga--
;
;"big","Adj","1.badZA"     
;              ---- < badA (BOwika rUpa meM)
;There is a big ground behind our flat.
;hamAre Gara ke pICe eka badZA mExAna hE.
;
;--"2.umra_meM_badZI/badZA" 
;              ---- < badA (Ayu kI xqRti meM)
;My big sister's wedding will be solemnised in February.
;--"3.mahawvapUrNa" 
;              ---- < badA (aXika(badA) XyAwavya)
;The last match is a big match for India.
;--"4.mahawvAkAMkRA"  
;              ---- < badA (badI icCA) 
;He has big ideas && plans in his mind.
;--"5.prasixXa"     
;              ---- < badA (lokapriyawA ko prApwa karanevAloM meM badA)
;Cartoon network is a big among children.
;--"6.xayAlu"   
;              ---- < badA (mAnasika swara kA badA)
;Its very big of him to donate half of his salary to the flood victims.
;--"7.uwwejiwa"  
;              ---- < badA (mAnasika swara para aXika(badA) halacala ko lie, vAlA)
;They feel big about the world tour.
;
;
;------------------------------------------------------------
;
;     Upara xiye uxAharaNoM meM 'big' ke viviXa prayogoM meM 'bade' kA BAva sAmAnya
;hE . saBI arWa bade ke arWa-viswAra ke rUpa meM xeKe jA sakawe hEM . SabxoM ke 
;sAWa xI gayI tippaNiyoM se yaha spaRta hE . aXika spaRtawA ke lie kuCa arWa-viswqwa
;SabxoM ko xeKawe hEM--
; 
;-- `mahawwvAkAMkRA'- EsI mAnasika icCA, jo bahuwa badI howI hE . isake pUrNa hone 
;kI samBAvanAez kama hI howI hEM . yaha iwanI badI icCA howI hE ki isakI pUrwi 
;lagaBaga asamBava hI howI hE .   
;
;-- `xayAlu'- acCe guNa manuRya ko bade banAwe hEM . xayA kA honA eka acCA guNa mAnA 
;jAwA hE . xayAlu honA manuRya kA badA honA hE . 
;
;-- `uwwejiwa'- mAnasika BUmi para kuCa na kuCa saxA howA rahawA hE . Ese meM
;mAnasika swara para aXika halacala ko uwwejanA kahawe hEM . mAnasika swara para bade 
;halacala ko lie hue vyakwi ko uwwejiwa kahawe hEM .
;
;sUwra : badA`
;
