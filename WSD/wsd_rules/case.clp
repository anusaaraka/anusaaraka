;##############################################################################
;#  Copyright (C) 2002-2005 Preeti Pradhan (pradhan.preet@gmail.com)
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

;Added by Preeti(30-11-13)
;He is a hopeless case. 
;vaha eka nikammA AxamI hE.
(defrule case_AxamI
(declare (salience 600))
(id-root ?id case)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  case.clp 	case_AxamI   "  ?id "  AxamI )" crlf))
)

;Added by Preeti(30-11-13)
;The statues are kept in a glass case. 
;prawimAez  kAzca kI petI meM raKI gayIM hEM.
(defrule case_petI
(declare (salience 650))
(id-root ?id case)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?) 
(and(viSeRya-of_saMbanXI  ?id ?id1) (id-root ?id1 champagne|whisky))
(and(viSeRya-for_saMbanXI  ?id ?id2) (id-root ?id2 pill)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id petI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  case.clp 	case_petI   "  ?id "  petI)" crlf))
)


;Added by Preeti(30-11-13)
;Latin nouns have case, number and gender.
(defrule case_kAraka
(declare (salience 550))
(id-root ?id case)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  case.clp 	case_kAraka   "  ?id "  kAraka )" crlf))
)


;#############################Defaults rule#######################################
;Added by Preeti(30-11-13)
;4,000 new cases of the disease are diagnosed every year. 
;bImArI ke 4,000 naye mAmale prawyeka varRa nixAna kie gaye hEM.
(defrule case_mAmalA
(declare (salience 500))
(id-root ?id case)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAmalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  case.clp 	case_mAmalA   "  ?id "  mAmalA )" crlf))
)
;################### Additional Examples ####################
;There was a ten-foot long stuffed alligator in a glass case.
;The museum was full of stuffed animals in glass cases.
;A glass case full of china broke.
;All most all girls have a jewellery case.
;He has six cases of whisky.
;The winner will receive a case of champagne.
;She held up a blue spectacle case.
;I have a small case for holding pills.
;In some cases people have to wait several weeks for an appointment.
;The company only dismisses its employees in cases of gross misconduct.
;It's a classic case of bad planning.
;People were imprisoned, and, in some cases, killed for their beliefs. 
;We usually ask for references, but in your case it will not be necessary. 
;The whole film is based on a case of mistaken identity.
;If that is the case , we need more staff.
;It is simply not the case that prison conditions are improving.
;In your case, we are prepared to be lenient.
;I cannot make an exception in your case.
;Every application will be decided on a case-by-case basis.
;Police in the town have investigated 50 cases of burglary in the past month.
;He lost his case.[vaha apanA mukaxamA hAra gayA/usane apani petI GumAxI here mAmalA will not be a good usage but all the other cases it can be both]
;The case will be heard next week.
;When does her case come before the court?
;The most serious cases were treated at the scene of the accident.
;Bad diet can cause tiredness, but I don't think that's the case here.