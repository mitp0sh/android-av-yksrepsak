.class final Lws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Lwo;


# direct methods
.method private constructor <init>(Lwo;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lws;->a:Lwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwo;B)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lws;-><init>(Lwo;)V

    return-void
.end method

.method private a(Lme;)V
    .locals 2

    .prologue
    .line 275
    sget-object v1, Lwp;->a:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 279
    :pswitch_0
    iget-object v0, p0, Lws;->a:Lwo;

    invoke-virtual {v0}, Lwo;->f()V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Lme;

    invoke-direct {p0, p1}, Lws;->a(Lme;)V

    return-void
.end method
