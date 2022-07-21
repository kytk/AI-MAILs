%% SPM12 installer
% Simply run 'install_spm12' with Matlab.
% 31 May 2022 K. Nemoto

% Check OS and change directory
if ispc
    cd('C:\')
else
    userDir = char(java.lang.System.getProperty('user.home'));
    cd(userDir)
end

disp('Download SPM12. Please wait for a few minutes')
spm12_path = fullfile(pwd,'spm12');

if not(isfolder(spm12_path))
    spm12url = 'https://github.com/spm/spm12/archive/refs/heads/master.zip';
    unzip(spm12url);
    movefile spm12-master spm12;
    addpath(spm12_path);
    savepath;
    disp('SPM12 is successfully installed.')
else
    disp('spm12 directory already exists.')
    disp('Check if spm12 runs.')
end

cd(userpath)