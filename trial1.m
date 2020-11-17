urlwrite('https://api.covid19india.org/csv/latest/case_time_series.csv','td.csv')
urlwrite('https://api.covid19india.org/csv/latest/tested_numbers_icmr_data.csv','ti.csv')
t=readtable('td.csv')
ti=readtable('ti.csv')
t2 = datetime(2020,1,30):datetime('yesterday')
t.Properties.VariableNames
figure
for k=1:1:length(t.DailyConfirmed)
    pause(0.2)
    hold on
    scatter(t2(k),t.TotalConfirmed(k),'ro','filled')
    scatter(t2(k),t.TotalRecovered(k),'bo','filled')
    legend('Confirmed','Recovered')
    ax=gca
    ax.FontWeight='bold'
    end
    hold on
    plot(t2,t.TotalConfirmed,'-r','LineWidth',3)
    plot(t2,t.TotalRecovered,'-b','LineWidth',3)
    legend('Confirmed','Recovered')
 figure
plot(ti.TotalSamplesTested,'-g','LineWidth',3)