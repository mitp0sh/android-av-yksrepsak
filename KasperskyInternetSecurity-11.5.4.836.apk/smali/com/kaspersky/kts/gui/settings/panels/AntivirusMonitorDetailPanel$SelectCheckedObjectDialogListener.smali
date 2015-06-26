.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;
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
    .line 199
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;B)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)V

    return-void
.end method

.method private static a(I)Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;
    .locals 1

    .prologue
    .line 230
    packed-switch p0, :pswitch_data_0

    .line 234
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->ScanAllFiles:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    :goto_0
    return-object v0

    .line 232
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->ScanExecutablesOnly:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;I)I

    .line 206
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v1, v3, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;ILjava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 213
    const/16 v0, 0xd

    .line 218
    :goto_1
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v1

    .line 219
    const-class v2, Lsl;

    monitor-enter v2

    .line 220
    :try_start_0
    invoke-virtual {v1, v0}, Lsl;->c(I)V

    .line 221
    invoke-virtual {v1}, Lsl;->g_()V

    .line 222
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v1

    invoke-interface {v1, v0}, Lgz;->a(I)I

    .line 225
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;->e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel;)I

    move-result v0

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusMonitorDetailPanel$SelectCheckedObjectDialogListener;->a(I)Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;)V

    .line 226
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 215
    :cond_2
    const/16 v0, 0xa

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
