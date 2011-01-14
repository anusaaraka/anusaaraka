
(defrule positive0
(declare (salience 5000))
(id-root ?id positive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakArAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  positive.clp 	positive0   "  ?id "  sakArAwmaka )" crlf))
)

(defrule positive1
(declare (salience 4900))
(id-root ?id positive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakArAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  positive.clp 	positive1   "  ?id "  sakArAwmaka )" crlf))
)

;"positive","Adj","1.sakArAwmaka"
;Rahul is more positive while dealing with the petroleum.
;--"2.niScayAwmaka"  
;We have no positive evidence of her involvement.
;--"3.pakkA"  
;Are you absolutely positive that it was after midnight?
;--"4.praBAvayukwa"
;The test get a positive reaction.
;--"5.suniSciwa"
;It was a positive miracle that we arrived on time.
;--"6.XanAwmaka"
;'+' is a positive sign in mathematics.
;
;LEVEL 
;Headword : positive
;
;Examples --
;
;1. He has a positive view of life.
;usakI jIvana ke prawi sakArAwmaka xqRtI hE.
;2. Any number greater than zero is a positive number.
;SUnya se aXika koI BI saMKyA sakArAwmaka saMKyA howI hE.
;3. His blood report proved positive for malaria.
;yaha KUna kA riporta maleriyA ke lie sakArAwmaka sixXa huA.
;4. We are positive about the new plan.
;hama isa naI yojanA ke prawi viSvaswa hE.
;5. She was positive that she would win.
;vaha niSciwa WI ki vaha jIwa jAegI.
;6. Put the positive terminal of the battery upwards.
;bEtarI kI XanAwmaka waraPa upara kI waraPa raKanA.
;7. They developed the positives [prints] from the old photograph negatives.
;unhoMne purAne Poto kI nakArAwmaka CApa se sakArAwmaka CApa nikAlI.
;
;
;vyAKyA --
;uparaliKiwa vAkyoM meM "positive" Sabxa ke jo Binna lagawe arWa A rahe hEM unakA mUlawaH
;eka hI arWa, jisake xvArA ina saBI arWoM ko saMbaxXa kiyA jA sakawA hE.
;
;vAkya 1 - 3 meM "positive" kA arWa "sakArAwmaka" EsA A rahA hE.
;
;vAkya 4. meM "positive" kA jo arWa "viSvAsawa" A rahA hE usameM sakArAwmaka BAva hE.
;kyoMki kisI para hama viSvAsa waBI karawe hEM, jaba usake prawi hamArI xqRti sakArAwmaka 
;ho. wo aba hama isa saMxarBa meM A rahe "positive" ke arWa, "viSvAsawa", se "sakArawmaka"
; EsA arWa prApwa kara sakawe hEM.
;
;vAkya 5. meM "positive" kA arWa "niSciwa" Ora "suniSciwa" EsA A rahA hE. 
;jo kuCa niSciwa hE, usake prawi hama viSvaswa howe hEM, Ora jisake prawi hama viSvaswa
;howe hEM, usake prawi hama sakArAwmaka BAva raKawe hE. wo aba hama "viSvaswa" ke arWa
;Ora "niSciwa" ke arWa se "sakArAwmaka" kA arWa prApwa kara sakawe hEM.
;
;vAkya 6. meM "positive" kA arWa "XanAwmaka" EsA A rahA hE.
;
;
;anwarnihiwa sUwra ;
;
;sakArAwmaka - niSciwa - viSvaswa -XanAwmaka
;
;wo aba hama "positive" kA sUwra isa prakAra xe sakawe hEM.
;
;sUwra : sakArAwmaka[>XanAwmaka]
;                    
