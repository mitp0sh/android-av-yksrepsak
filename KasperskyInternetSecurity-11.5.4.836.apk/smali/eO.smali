.class final LeO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LoO;


# instance fields
.field private synthetic a:LeN;


# direct methods
.method private constructor <init>(LeN;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, LeO;->a:LeN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LeN;B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, LeO;-><init>(LeN;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, LeO;->a:LeN;

    invoke-static {v0}, LeN;->a(LeN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lsl;->c()I

    move-result v0

    .line 105
    rsub-int/lit8 v1, p2, 0x2

    .line 107
    iget-object v2, p0, LeO;->a:LeN;

    invoke-static {v2, v0, v1}, LeN;->a(LeN;II)V

    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
