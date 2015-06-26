.class final Lwr;
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
    .line 305
    iput-object p1, p0, Lwr;->a:Lwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwo;B)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lwr;-><init>(Lwo;)V

    return-void
.end method

.method private a(Lvg;)V
    .locals 2

    .prologue
    .line 310
    sget-object v1, Lwp;->c:[I

    invoke-virtual {p1}, Lvg;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lwr;->a:Lwo;

    invoke-virtual {v0}, Lwo;->f()V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 305
    check-cast p1, Lvg;

    invoke-direct {p0, p1}, Lwr;->a(Lvg;)V

    return-void
.end method
