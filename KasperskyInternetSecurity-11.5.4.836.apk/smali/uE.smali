.class final LuE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Luz;


# direct methods
.method private constructor <init>(Luz;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, LuE;->a:Luz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luz;B)V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0, p1}, LuE;-><init>(Luz;)V

    return-void
.end method

.method private a(Lpu;)V
    .locals 2

    .prologue
    .line 770
    sget-object v1, LuC;->e:[I

    invoke-virtual {p1}, Lpu;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/IssueEventType;

    invoke-virtual {v0}, Lcom/kms/issues/IssueEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 777
    :goto_0
    return-void

    .line 774
    :pswitch_0
    iget-object v0, p0, LuE;->a:Luz;

    invoke-static {v0}, Luz;->b(Luz;)V

    goto :goto_0

    .line 770
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
    .line 767
    check-cast p1, Lpu;

    invoke-direct {p0, p1}, LuE;->a(Lpu;)V

    return-void
.end method
