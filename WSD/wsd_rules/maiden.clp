
(defrule maiden0
(declare (salience 5000))
(id-root ?id maiden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maiden.clp 	maiden0   "  ?id "  pahalA )" crlf))
)

;"maiden","Adj","1.pahalA{korA}"
(defrule maiden1
(declare (salience 4900))
(id-root ?id maiden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avivAhiwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maiden.clp 	maiden1   "  ?id "  avivAhiwA )" crlf))
)

;"maiden","N","1.avivAhiwA"
;She is a pretty looking maiden.
;--"2.medana{binA_rana_xiye}"
;Ravi Shastri bowled three consective maiden overs.
;--"3.praWama"
;This is his maiden speech as the Principal.
;
;LEVEL 
;Headword : Maiden
;
;Examples --
;
;1.She remained a maiden for thirty years. 
;vaha wIsa sAla waka eka avivAhiwA rahI.
;2.That was our team's first maiden over.
;vaha apanI tIma kI praWama medana ovara WI.
;3.The ship made its maiden voyage last year.
;jahAjZa ne piCale sAla apanI pahalI samuxrI-yAwrA kI.
;4.He gave a maiden speech in the Parliament, last evening.
;piCalI SAma usane saMsaxa meM apanA pahalA BARaNa xiyA.
;
;uparaliKiwa vAkyoM meM "maiden" Sabxa ke jo Binna arWa A raheM hEM ve hEM :
;vAkya 1 meM "maiden" kA jo arWa A rahA hE, vaha hE "avivAhiwA" kA. 
;vAkya 2 meM "maiden" kA jo arWa A rahA hE, vaha hE,"medana ovara" [jisa ovara meM koI BI
;rana na banA ho].
;vAkya 3 Ora 4 meM jo arWa A rahA hE,vaha hE "pahalA" kA.
;
;uparaliKiwa "maiden" ke saBI Binna laganevAle arWa saMbaMXiwa hEM. ina saBI arWoM kA jo 
;mUlawaH eka arWa A rahA hE, vaha hE "korepana" kA.
;
;vAkya 1 meM, avivAhiwA kA arWa korepana se saMbaMXiwa hE. vEse hI, vAkya 2 meM medana
;ovara kA arWa BI korepana se saMbaMXiwa hE kyoMki jisa ovara meM koI rana nahIM banawA vaha ovara
;korA howA hE. vAkya 3-4 meM "maiden" kA arWa viswqwa hokara "pahalA" EsA A rahA hE.
;jEse ki vAkya 3 meM jahAjZa ne apanI pahalI yAwrA kI waba waka vaha korA rahA. TIka Ese hI
;vAkya 4 meM jaba waka BARaNa xiyA nahIM gayA vaha korA rahA.
;
;wo aba hama "maiden" ke lie anwarnihiwa-sUwra isa prakAra xe sakawe hEM-
;
;anwarnihiwa sUwra ;
;
;korA - avivAhiwA
;|
;v
;pahalA
;
;
;sUwra : avivAhiwA^pahalA{korA}
