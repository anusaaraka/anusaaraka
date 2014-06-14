
(defrule plot0
(declare (salience 5000))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaWAnaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot0   "  ?id "  kaWAnaka )" crlf))
)

(defrule plot1
(declare (salience 4900))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa_reKA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot1   "  ?id "  rUpa_reKA_banA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;A plot to blow up the embassy. [Cambridge]
;राजदूतावास को धमाके से उङाने का षङयंत्र .
(defrule plot2
(declare (salience 5500))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-anaBihiwa_subject  ?vrb ?id)
(to-infinitive  ? ?vrb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id RafayaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot2   "  ?id "  RafayaMwra )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;They plotted to bring down the government.  [Cambridge]
;उन्होंने सरकार को गिराने के लिए षङयंत्र रचा .
(defrule plot3
(declare (salience 5500))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id RafayaMwra_raca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot3   "  ?id "  RafayaMwra_raca )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;He fired all those accused of plotting against him.  [Cambridge]
;उसने उसके विरुद्ध षङयंत्र रचने वालों को नौकरी से निकाल दिया .
(defrule plot4
(declare (salience 5500))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb|noun)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id RafayaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot4   "  ?id "  RafayaMwra )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;He hatched a plot to kill his wife. [Cambridge]
;उसने अपनी पत्नी को मारने के लिए षङयंत्र बनाया .
(defrule plot5
(declare (salience 5500))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 hatch|scheme|uncover|reveal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id RafayaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot5   "  ?id "  RafayaMwra )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;She bought a small plot of land to build a house on. [OALD]
;उसने भूमि का एक छोटा भूखण्ड घर बनाने के लिए खरीदा .
(defrule plot6
(declare (salience 5500))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id)(viSeRya-of_saMbanXI  ?id ?id1)(kriyA-subject  ?id1 ?id))
(id-root ?id1 buy|gave|purchase|land|sell|available)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUKaNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot6   "  ?id "  BUKaNda )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;She spent her years in prison plotting her revenge.  [OALD]
;उसने कारागार में वर्ष अपने बदले का षङयंत्र रचते हुए बिताए हैं .
(defrule plot7
(declare (salience 5500))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id ?id1)
(id-root ?id1 revenge|retaliation|avenge)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id RafayaMwra_raca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot7   "  ?id "  RafayaMwra_raca )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;Her latest book is a brilliantly plotted novel about the war.  [OALD]
;उसकी नई पुस्तक युद्ध के बारे में अच्छे प्रकार से लिखी हुई उपन्यास है .
(defrule plot8
(declare (salience 5500))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?adj ?id)
(viSeRya-about_saMbanXI  ?adj ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot8   "  ?id "  liKI_ho )" crlf))
)


;"plot","V","1.rUpa reKA banAnA"
;I ploted a map of Asia on a paper.
;--"2.RadyaMwra racanA"
;Police plot a plan for the murderer.
;
;LEVEL 
;
;
;'plot' ke liye SabxasUwra banAne kA prayAsa:-
;
;"plot","N","1.BUBAga"
;I saw a plot , with a small cottage && rose garden, which was very beautiful
;--"2.kaWAnaka"
;The plot of this novel is to spot out the murderer.
;--"3.kucakra"
;The rebels in the party hatched a plot to bring the government down.
;
;"plot","V","1.rUpa reKA banAnA"
;I plotted a map of Asia on a paper.
;--"2.RadyaMwra racanA"
;Police plot a plan for the murderer.
;------------------------------------------------
;
;isa Sabxa kA mUla samBavawaH `BAga' ho yA yaha mUlawaH `BUBAga' ke arWa meM hI prayukwa ho.
;kaWA ke aMSa ke rUpa meM isakA pracalana . kAraNa yaha BI BAga hI hE (cAhe kaWA kA hI ho) .
;saMjFA se kriyArUpa- 
;isakA XAwurUpa `rUpa reKA banAnA' hogA . kAraNa binA rUpareKA banAye `BUBAga' kA 
;niScaya samBava nahIM . 
;BUBAga nimna howA hE . `Radyanwra nimna mAnA jAwA hE' yA Pira `pahale BUBAga hewu hI
;Radyanwra kiye jAwe We' . isa waraha `Radyanwra' rUpa meM isakA prayoga . 
;isakA kriyArUpa .  
;
;sUwra : [BU]BAga/kaWAnaka^kucakra
;
