function  plot_informatii_cupla(forta_cupla, momt_cupla, t, index)
    index_str = int2str(index);
    inf_cupla = strcat('Informatii Cupla_', index_str);
    %inf_cupla = "Informatii Cupla " + string(index);
    figure('Name', inf_cupla)
    subplot(4,2,1)
    plot(t,forta_cupla(1,:))
    xlabel('Time') 
    ylabel('Newton') 
    title('Force on X axis')
    grid on
    
    subplot(4,2,3)
    plot(t,forta_cupla(2,:))
    xlabel('Time') 
    ylabel('Newton')
    title('Force on Y axis')
    grid on
    
    subplot(4,2,5)
    plot(t,forta_cupla(3,:))
    xlabel('Time') 
    ylabel('Newton')
    title('Force on Z axis')
    grid on
    
    modul_forta_cupla = zeros(1,length(t));
    for i = 1:length(t)
        modul_forta_cupla(1,i) = sqrt(forta_cupla(1,i)^2 + forta_cupla(2,i)^2 + forta_cupla(3,i)^2);
    end
    subplot(4,2,7)
    plot(t,modul_forta_cupla)
    xlabel('Time') 
    ylabel('Newton')
    title('Module of Force')
    grid on
    
    %------------------------------------------------------------
    
    subplot(4,2,2)
    plot(t,momt_cupla(1,:))
    xlabel('Time') 
    ylabel('Newton*Meter')
    title('Moment on X axis')
    grid on
    
    subplot(4,2,4)
    plot(t,momt_cupla(2,:))
    xlabel('Time') 
    ylabel('Newton*Meter')
    title('Moment on Y axis')
    grid on
    
    subplot(4,2,6)
    plot(t,momt_cupla(3,:))
    xlabel('Time') 
    ylabel('Newton*Meter')
    title('Moment on Z axis')
    grid on
    
    modul_moment_cupla = zeros(1,length(t));
    for i = 1:length(t)
        modul_moment_cupla(1,i) = sqrt(momt_cupla(1,i)^2 + momt_cupla(2,i)^2 + momt_cupla(3,i)^2);
    end
    subplot(4,2,8)
    plot(t,modul_moment_cupla)
    xlabel('Time') 
    ylabel('Newton*Meter')
    title('Module of Moment')
    grid on
end