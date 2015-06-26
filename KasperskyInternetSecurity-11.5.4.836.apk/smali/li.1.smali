.class final Lli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Llc;


# direct methods
.method private constructor <init>(Llc;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lli;->a:Llc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llc;B)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lli;-><init>(Llc;)V

    return-void
.end method

.method private a(Llb;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lli;->a:Llc;

    invoke-static {v0}, Llc;->a(Llc;)LbS;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lli;->a:Llc;

    invoke-static {v0}, Llc;->a(Llc;)LbS;

    move-result-object v0

    invoke-virtual {v0}, LbS;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 189
    iget-object v0, p0, Lli;->a:Llc;

    invoke-static {v0}, Llc;->a(Llc;)LbS;

    move-result-object v0

    invoke-virtual {v0, v1}, LbS;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbQ;

    .line 190
    instance-of v2, v0, Lrz;

    if-eqz v2, :cond_0

    .line 191
    check-cast v0, Lrz;

    invoke-interface {v0, p1}, Lrz;->a(Lrw;)V

    .line 188
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lli;->a:Llc;

    invoke-static {v0}, Llc;->a(Llc;)LbS;

    move-result-object v0

    invoke-virtual {v0}, LbS;->notifyDataSetChanged()V

    .line 197
    :cond_2
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 183
    check-cast p1, Llb;

    invoke-direct {p0, p1}, Lli;->a(Llb;)V

    return-void
.end method
