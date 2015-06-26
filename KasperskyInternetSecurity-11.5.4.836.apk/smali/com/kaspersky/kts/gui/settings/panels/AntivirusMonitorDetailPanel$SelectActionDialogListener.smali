.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;B)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)V

    return-void
.end method

.method private static a(I)Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;
    .locals 1

    .prologue
    .line 270
    packed-switch p0, :pswitch_data_0

    .line 278
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;->Unknown:Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;

    :goto_0
    return-object v0

    .line 272
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;->PutToQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;

    goto :goto_0

    .line 274
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;->Delete:Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;

    goto :goto_0

    .line 276
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;->Skip:Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 243
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->g(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;I)I

    .line 247
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->i(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v1, v3, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;ILjava/lang/String;)V

    .line 255
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 256
    const-class v1, Lsl;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I

    move-result v2

    invoke-virtual {v0, v2}, Lsl;->a(I)V

    .line 258
    invoke-virtual {v0}, Lsl;->g_()V

    .line 259
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I

    move-result v1

    invoke-static {v1}, LmI;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Lgz;->b(I)I

    .line 264
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->h(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I

    move-result v0

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectActionDialogListener;->a(I)Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;)V

    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
