;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;This machine is under par. [rajpal]
;यह मशीन खराब हालत में है  .
(defrule par1
(declare (salience 5000))
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-under_saMbanXI  ? ?id)
(id-root ?id1 under)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarAba_hAlawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " par.clp  par1  "  ?id "  " ?id1 "  KarAba_hAlawa  )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;His health is up to the par.  [rajpal]
;उसका स्वास्थय औसतन अच्छा है .
(defrule par2
(declare (salience 5000))
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-to_saMbanXI  ?id1 ?id)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Osawana_acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " par.clp  par2  "  ?id "  " ?id1 "  Osawana_acCA  )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;The school budget is going to be cut again this year, but then that's par for the course.  [Cambridhe]
;विद्यालय का बजट फिर से कम होगा, किन्तु यह अपेक्षित है .
(defrule par3
(declare (salience 5000))
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-root ?id1 course)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 apekRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " par.clp  par3  "  ?id "  " ?id1 "  apekRiwa  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;I may take tomorrow off if I'm still feeling under par. [oald]
;यदि में अस्वस्थ महसूस करता हूँ तो मैं कल की छुट्टी ले सकता हूँ .
(defrule par4
(declare (salience 5500))
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-under_saMbanXI  ?id2 ?id)
(id-root ?id1 under)
(id-root ?id2 feel)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asvasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " par.clp  par4  "  ?id "  " ?id1 "  asvasWa  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;Teaching in some subjects has been well below par. [oald]
;कुछ विषयों में शिक्षण औसत से कम है .
(defrule par5
(declare (salience 5000))
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-below_saMbanXI ? ?id)
(id-root ?id1 below)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Osawa_se_kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " par.clp  par5  "  ?id "  " ?id1 "  Osawa_se_kama  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;He made a par on the ninth hole.  [M-W]
;उसने नवें गड्ढे में अंक बनाया .
(defrule par6
(declare (salience 4000))
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 make|score)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  par.clp 	par6   "  ?id "  aMka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule par7
(declare (salience 3000))
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  par.clp 	par7   "  ?id "  barAbara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule par8
(declare (salience 3000))
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbarI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  par.clp 	par8   "  ?id "  barAbarI_kara)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule par9
(id-root ?id par)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  par.clp 	par9   "  ?id "  barAbara )" crlf))
)

