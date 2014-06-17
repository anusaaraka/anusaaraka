;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################


;Putting the bookcase together should be a simple assembly job.
;किताबों की अलमारी को एक साथ रखना एक सरल संयोजन काम होना चाहिए 
;The frame needs to be strong enough to support the engine assembly.
;इंजन संयोजन को सहारा देने के लिये ढाँचा काफी मजबूत  होना चाहिए 

(defrule assembly0
(declare (salience 3800))
(id-root ?id assembly)
?mng <-(meaning_to_be_decided ?id)
(or(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyojana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assembly.clp 	assembly0   "  ?id "  saMyojana )" crlf))
)

;The correct assembly of the parts.
;We need to consider an assembly of different bodies exerting forces on each other.
;Besides, each body in the assembly experiences the force of gravity.
(defrule assembly1
(declare (salience 4500))
(id-root ?id assembly)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI ?id ?id1)(viSeRya-in_saMbanXI ?id1 ?id))
(id-root ?id1 part|body)
;(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyojana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assembly.clp 	assembly1   "  ?id "  saMyojana )" crlf))
)

;He was to address a public assembly on the issue.
;An assembly point.

(defrule assembly2
(declare (salience 0))
(id-root ?id assembly)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ?kri ?id)(kriyA-object ?kri ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammelana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assembly.clp 	assembly2   "  ?id "  sammelana )" crlf))
)




;************************************************************* EXAMPLES *********************************************************************

;We will need to consider an assembly of different bodies exerting forces on each other.
;Besides, each body in the assembly experiences the force of gravity. 
;The correct assembly of the parts.
;Putting the bookcase together should be a simple assembly job.
;The frame needs to be strong enough to support the engine assembly.


;He was to address a public assembly on the issue.
;An assembly point.

;************************************************** TO BE RESOLVED LATER ********************************************************************

;The deputy headmaster was taking school assembly that day.
;NOTE: school assembly can be added as multi word.meaning to be decided.

;****NOTE****
;'saMyojana' meaning can be added to physics dictionary and rule 1 can be discarded.or multi words(engine assembly, assembly can be added to multiword dictionary.
;Also there are some sentences where rule 1 is not giving correct result.ex:The deputy headmaster was taking school assembly that day.
  
;They were fighting for freedom of speech and freedom of assembly.
;Power has been handed over to provincial and regional assemblies.
;The national assembly has voted to adopt the budget.
;The California Assembly.
;The UN General Assembly.
;Assembly elections.
;An elected assembly.




