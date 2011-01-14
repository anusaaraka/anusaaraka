;Added by human beings
(defrule advance0
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tools)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp 	advance0   "  ?id "  pragawa )" crlf))
)

(defrule advance1
(declare (salience 4900))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id advanced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pragawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  advance.clp  	advance1   "  ?id "  pragawa )" crlf))
)

(defrule advance2
(declare (salience 4800))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id advanced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id unnawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  advance.clp  	advance2   "  ?id "  unnawa )" crlf))
)

;Added by Sheetal(5-03-10)
;Her study has considerably advanced .
(defrule advance3
(declare (salience 4700))
(id-root ?id advance)
(kriyA-subject ?id ?sub)
(id-word ?sub study)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance3   "  ?id "  baDa )" crlf))
)


(defrule advance4
(declare (salience 4600))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDaz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance4   "  ?id "  Age_baDaz )" crlf))
)


;"advanced","Adj","1.unnawa"
;Today's advanced technology has made the world smaller.
;--"2.ucca_SreNI_ke"
;This dictionary is meant for an advanced learner.
;--"3.nayA/aBI_waka_sAmAnya_rupa_se_svIkqwi_nA_milA_huA"
;Though attractive,most of Mr.Gupta's very advanced ideas about traffic regulation are impractical.
;--"4.baDZA_huA"
;His advanced age does not prevent him from singing.
;
;
;default_sense && category=verb	Age_baDZanA[baDAnA]	0
;"advance","V","1.Age_baDZanA[baDAnA]"
;The army was ordered to advance.
;The protestors advanced their leader to talk with the minister.
;The man advanced towards her menacingly.
;--"2.pragawi_karanA"
;The company's shares advanced after the new director joined.
;--"3.agrima_rASi_xenA"
;The government gave an advance to the farmers to help them buy good seeds.
;--"4.vicAra_yA_suJAva_xenA"
;The corporation has advanced a new policy for regularising illegal
;constructions.
;--"5.niSciwa_samaya_se_pUrva_karanA"
;The time of the meeting was advanced in view of the night curfew in the city.
;
;LEVEL 
;
;
;1."advance","N", "1.Age_baDZanA"
;The advance of the enemy armed forces into the interior towns is alarming.
;xuSmana kI senAoM kA anxarUnI SaharoM meM Age baDZanA cinwA janaka hE. 
;The health department is desperate to halt the advance of brain fever     
;svAsWya viBAga maswiRka jvara ko aXika_baDZane se rokane ke liye Gora prayAsa kara rahA hE.
;2."vikAsa"
;The continued advance of some great civilizations always attract historians.
;kuCa mahawvapUrNa saByawAoM kA anavarawa vikAsa hameSA iwihAsakAroM ko AkarRiwa karawI hE.
;<-- vikAsa krama meM Age baDZanA
;It is controversial whether recent advances in technology are beneficial or
;detrimental to humanity.                                                        
;hAla kI wakanIkI vikAsa manuRya ke liye lABaxAyaka hE yA hAnikAraka yaha eka vivAxa kA 
;viRaya hE.
;<-- vikAsa krama meM Age baDZanA
;3."agrima rASi
;The company agreed to pay a festival advance of Rs.1000 to all its employees.
;kampanI apane saBI karmacAriyoM ko agrima (Age kI)rASi 1000 rupaye xene ke liye rAjZIho gayI.-agrima-Age kI                                                       
;
;4."baDZawa"   
;The auctioneer was disappointed to find no advance on the opening bid. 
;nIlAmakAra ko SuruAwI bolI kI baDZawa na pAkara bahuwa nirASA huI.
;
;5."xoswI/pyAra jawAne kI koSiSa" 
;How could Surpankha not feel dejected after all her amorous advances were 
;rejected by lakshmana.                                                          
;sUrpaNaKA kEse hawASa nahIM howI jaba ki usakI sArI pyAra kI koSiSeM lakRmaNa xvArA asvIkqwa kara xI gayIM.-pyAra kI koSiSa-baDZAvA 
;
;6."pahale hI"
;We booked our tickets for the magic show in advance.
;hama logoM ne apane tikateM mejika So ke liye pahale hI surakRiwa kara lI WIM.
;-pahale hI-Age se hI
;
;7."Age" 
;Plato's ideas were well in advance of his times.
;pleto ke vicAra usake samaya se bahuwa Age We.
;
;"advance","V","1.Age baDZanA"  
;The army was ordered to advance. 
;PZOja ko Age baDZane ke AxeSa xiye gaye.-Age baDZanA
;
;2."pragawi karanA" 
;The company's shares advanced after the new director joined.
;naye nixeSaka ke kampanI kA kAryaBAra lene ke bAxa se Seyarsa pragawi kara gaye.
;-pragawi karanA-Age baDZanA
;
;3."agrima rASi xenA"
;The government gave an advance to the farmers to help them buy good seeds. 
;sarakAra ne acCe bIja KarIxane ke liye kisAnoM ko agrima rASi xekara unakI maxaxa kI
;-agrima rASi-Age kI
;
;4.vicAra/suJAva xenA 
;The corporation has advanced a new policy for regularizing illegal constructions
;nigama ne gErakAnUnI nirmANoM ko niyamiwa karane ke liye naye suJAva xiye.-suJAva xenA-suJAva Age baDZAnA 
;
;5."niSciwa samaya se pUrva karanA"  
;The time of the meeting was advanced in view of the night curfew in the city.
;nagara meM rAwa ke karPyu ko xeKawe huye goRTI kA samaya niSciwa samaya se pUrva kara xiyA gayA.-pahale se Age kara xiyA gayA. 
;
;6."kImawoM Axi kA baDZanA" 
;Property values continue to advance rapidly.
;BUsampawwi kI kImaweM lagAwAra SIGrawA se Age baDZa rahI hEM.-Age baDZanA
;
;"advance","adj","1.agrima" 
;The company did not give any advance notice of it's closure.
; kampanI ne ise banxa karane kI koI BI agrima (Age se)sUcanA nahIM xI WI.
; -agrima--Age kI
;
;isa Sabxa ke yaxi hama saBI vAkyoM saMjFA , kriyA , Ora viSeRaNa para XyAna xeM wo samaswa arWoM kA BAva eka hI Sabxa'Age baDZanA'se nikAlA jA sakawA hE.
;   awa:uparyukwa Sabxa 'advance'ke liye sUwra-
;
;sUwra : Age[>pahale]_[baDZanA]
;
;sahI prawIwa howA hE. sambanXiwa Sabxa 'advanced ke uxAharaNa BI xeKa sakawe hEM. 
;
;
;
