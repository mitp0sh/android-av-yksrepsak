.class final Lwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private final a:Ljava/lang/String;

.field private synthetic b:Lwj;


# direct methods
.method public constructor <init>(Lwj;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lwm;->b:Lwj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lwm;->a:Ljava/lang/String;

    .line 148
    return-void
.end method

.method private a(Lvg;)V
    .locals 2

    .prologue
    .line 154
    sget-object v1, Lwk;->b:[I

    invoke-virtual {p1}, Lvg;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx;->a(Lrz;)V

    .line 159
    iget-object v0, p0, Lwm;->b:Lwj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lwj;->a(Lwj;Lwm;)Lwm;

    .line 160
    iget-object v0, p0, Lwm;->b:Lwj;

    invoke-static {v0}, Lwj;->a(Lwj;)LaU;

    move-result-object v0

    iget-object v1, p0, Lwm;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LaU;->reportCommandSucced(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    nop

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
    .line 143
    check-cast p1, Lvg;

    invoke-direct {p0, p1}, Lwm;->a(Lvg;)V

    return-void
.end method
