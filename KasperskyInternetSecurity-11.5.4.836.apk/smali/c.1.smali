.class public final Lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static a(Lme;)V
    .locals 2

    .prologue
    .line 12
    sget-object v1, Ld;->a:[I

    invoke-virtual {p0}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 14
    :pswitch_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lme;->l()Lcom/kms/antivirus/MonitorMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/kms/antivirus/MonitorMode;)V

    goto :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lme;

    invoke-static {p1}, Lc;->a(Lme;)V

    return-void
.end method
