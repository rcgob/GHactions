function [toolboxOptions] = releaseTask(toolboxVersion)
%GENERATETOOLBOX Function that generates a toolbox for the boss device API

arguments
    toolboxVersion (1,:) {mustBeText} = '0.0'
end

% Toolbox Parameter Configuration

toolboxFolder = "../../GHactions";
identifier = "GHactionsTest";
toolboxOptions = matlab.addons.toolbox.ToolboxOptions(toolboxFolder, identifier);

toolboxOptions.ToolboxName = "GH Actions Test";
toolboxOptions.ToolboxVersion = toolboxVersion;
toolboxOptions.Summary = "GH Actions Test"; 
toolboxOptions.Description = "Description";
toolboxOptions.AuthorName = "rcgob";
toolboxOptions.AuthorEmail = "none";
toolboxOptions.AuthorCompany = "none";
%toolboxOptions.ToolboxImageFile = "../images/toolboxPackaging.jpg";
toolboxOptions.ToolboxFiles = "../toolbox";
currentdir = pwd;
toolboxOptions.ToolboxMatlabPath = [currentdir(1:end-14),'toolbox'];
%toolboxOptions.AppGalleryFiles = ""; %Not applicable
%toolboxOptions.ToolboxGettingStartedGuide = "../toolbox/gettingStarted.mlx";

if ~exist("../releases", 'dir')
   mkdir("../releases")
end
toolboxOptions.OutputFile = "../releases/GHactions-toolbox-installer.mltbx";

toolboxOptions.MaximumMatlabRelease = "R2023a"; 
toolboxOptions.MinimumMatlabRelease = "R2023a"; 
toolboxOptions.SupportedPlatforms.Glnxa64 = true;
toolboxOptions.SupportedPlatforms.Maci64 = true;
toolboxOptions.SupportedPlatforms.MatlabOnline = true;
toolboxOptions.SupportedPlatforms.Win64 = true;
%toolboxOptions.ToolboxJavaPath = ""; %Not applicable

% %Required Add-ons (TO BE COMPLETED)
% Embedded Coder
% Simulink Desktop Real-Time

% Required Additional Software 
% --> Not Applicable

% Generate toolbox
matlab.addons.toolbox.packageToolbox(toolboxOptions);

end

