.class public final LjG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a()LjG;
    .locals 1

    .prologue
    .line 18
    new-instance v0, LjG;

    invoke-direct {v0}, LjG;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/kms/antivirus/AntivirusUpdateError;)V
    .locals 4

    .prologue
    .line 34
    sget-object v0, LjH;->b:[I

    invoke-virtual {p0}, Lcom/kms/antivirus/AntivirusUpdateError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    const-class v1, LjD;

    new-instance v2, LjI;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LjI;-><init>(B)V

    invoke-interface {v0, v1, v2}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 37
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ShowInternetConnectionRequiredDialog:Lcom/kms/UiEventType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/UiEventType;->newEvent(Ljava/lang/Object;)Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lme;)V
    .locals 2

    .prologue
    .line 23
    sget-object v1, LjH;->a:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Lme;->h()Lcom/kms/antivirus/AntivirusUpdateError;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, LjG;->a(Lcom/kms/antivirus/AntivirusUpdateError;)V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lme;

    invoke-direct {p0, p1}, LjG;->a(Lme;)V

    return-void
.end method
