%CLASSREGTREE_FUXIN  ���ނ܂��͉�A�؃I�u�W�F�N�g��?�?�
%
%   T = CLASSREGTREE_FUXIN(X,Y) ��?A�\���q X �̊�?��Ƃ��ĉ��� Y ��\�����邽�߂�
%   ����� T ��?�?����܂�?BX ��?A�\���l�� N ?s M ���?s��ł�?BY ������ N ��
%   �����l�̃x�N�g����?�?�?ACLASSREGTREE �͉�A����?s���܂�?BY ���J�e�S����?�?A
%   �����z��?A�܂���?A������̃Z���z���?�?�?ACLASSREGTREE �͕��ނ���?s���܂�?B
%   �ǂ����?�?��ł�?AT ��?A���ꂼ���?I�[�łȂ��m?[�h�� X �̗�̒l�Ɋ�Â���
%   ��������񕪖؂ł�?BX �܂��� Y ���� NaN �l��?A�����l�ƂȂ�悤�ɗ^�����?A
%   �����l���?�ϑ���?A�ߎ��Ŏg�p����܂���?B
%
%   T = CLASSREGTREE(X,Y,'PARAM1',val1,'PARAM2',val2,...) ��?A�I�v�V����
%   �p���??[�^�̖��O�ƒl�̑g��?��킹���w�肵�܂�?B:
%
%   ���ׂẴc��?[�ɑ΂���I�v�V����:
%      'categorical' �J�e�S����?�����בւ��Ȃ��悤�Ɉ������߂� X �̗��
%                   �C���f�b�N�X�x�N�g��?B
%      'method'     'regression' (Y ��?��l��?�?��̃f�t�H���g) �܂��� 
%                   'classification' (Y ��?��l�łȂ�?�?��̃f�t�H���g) �̂����ꂩ?B
%      'names'      �\����?��ɑ΂��閼�O�̃Z���z�� (?�?����ꂽ�c��?[���� X ��
%                   ?s���?�)?B
%      'prune'      ���S�ȃc��?[�Ǝ��?����ꂽ�T�u�c��?[��?œK�ȗ���v�Z����
%                   ?�?��� 'on' (�f�t�H���g)?A�܂���?A���?������Ɋ��S�ȃc��?[��
%                   �v�Z����?�?��� 'off'
%      'minparent'  �s���S�ȃm?[�h�� K?A�܂���?A�������邽�߂̕�?��̊ϑ���
%                   �?���Ȃ���΂Ȃ�Ȃ��悤��?� K (�f�t�H���g 10)
%      'minleaf'    �c��?[�̃�?[�t���Ƃ�?�?��ϑ�?� (�f�t�H���g�� 1)?B
%                   'minparent' �� 'minleaf' �̗������^����ꂽ?�?�?A
%                   ���̂悤��?A?ő�̃�?[�t�ƂȂ�?ݒ肪�g���܂�?B
%                   MINPARENT = MAX(MINPARENT,2*MINLEAF)
%      'nvartosample' �������Ƃɖ�?�ׂɑI�����ꂽ�\����?���?�?B
%                   �f�t�H���g�ł�?A���ׂĂ̕�?��͌��蕪�����Ƃ�?l������܂�?B
%      'mergeleaves' ����?e�m?[�h����?����郊?[�t���}?[�W��?A?e�m?[�h�Ɋ֘A
%                   ���郊�X�N��?�̃��X�N�l�̘a��^����?�?��� 'on' (�f�t�H���g)?B
%                   'off' ��?�?�?A��?[�t�̓}?[�W����܂���?B
%
%   ��A�؂݂̂̃I�v�V����:
%      'qetoler'     ��A�؂�?�?��Ƀm?[�h���Ƃ̓񎟌�?��̋��e��?����`?B
%                    �m?[�h���Ƃ̓񎟌�?��� QETOLER*QED ���?������Ȃ��?A
%                    �m?[�h�̕�������~���܂�?B������?AQED �͌���؂��傫��
%                    �Ȃ�O��?A���͔z�� Y �̕��ςƂ���?��肳�ꂽ YBAR ���?�� 
%                    QED = NORM(Y-YBAR) �Ƃ��Čv�Z�����S�f?[�^�ɑ΂���
%                    �񎟌�?��ł�?B�f�t�H���g�� 1e-6 �ł�?B
%
%   ���ޖ؂݂̂̃I�v�V����:
%      'cost'        ?���?s�� C?B������?AC(i,j) �� true �̃N���X�� i ��?�?���
%                    �N���X j �ɕ��ނ���_�̃R�X�g�ł� (�f�t�H���g��?Ai~=j ��
%                    ?�?��� C(i,j)=1?Ai=j ��?�?��� C(i,j)=0 �ł�)?B���邢��?A
%                    ���̒l�͎���2 �̃t�B?[���h���?��?\���� S �ɂ��邱�Ƃ��ł��܂�?B
%                    �J�e�S����?�?A�����z��?A�܂���?A������̃Z���z��Ƃ���
%                    �O��?[�v�����܂� S.group?A�R�X�g?s�� C ���܂� S.cost?B
%      'splitcriterion'  ������I�����邽�߂̊�?�?B�W�j�̑��l?��w�W�ɑ΂��� 
%                    'gdi' (�f�t�H���g)?Atwoing rule �ɑ΂��� 'twoing'?A
%                    ?ő�̈�?팸?��ɑ΂��� 'deviance' �̂����ꂩ?B
%      'priorprob'   �x�N�g�� (�قȂ�O��?[�v�����Ƃ� 1 �̒l) �Ƃ���?A
%                    �܂���?A���� 2 �̃t�B?[���h���?��?\���� S �Ƃ��Ďw�肳���
%                    �N���X���Ƃ̑O�̊m��?B�J�e�S����?�?A�����z��?A�܂���?A
%                    ������̃Z���z��Ƃ��ăO��?[�v�����܂� S.group?A�Ή�����
%                    �m���̃x�N�g�����܂� S.cost?B
%
%   ��:  �t�B�b�V��?[�̃A�C���X�f?[�^�ɑ΂��镪�ޖ؂�?�?����܂�?B
%      load fisheriris;
%      t = classregtree(meas, species,'names',{'SL' 'SW' 'PL' 'PW'});
%      view(t);
%
%   �Q?l CLASSREGTREE/EVAL, CLASSREGTREE/TEST, CLASSREGTREE/VIEW, 
%        CLASSREGTREE/PRUNE.


%   Copyright 2006-2009 The MathWorks, Inc. 
