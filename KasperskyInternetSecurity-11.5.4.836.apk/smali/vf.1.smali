.class final Lvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Lve;


# direct methods
.method private constructor <init>(Lve;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lvf;->a:Lve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lve;B)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lvf;-><init>(Lve;)V

    return-void
.end method

.method private a(Lvg;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->a(Lve;)LbS;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->a(Lve;)LbS;

    move-result-object v0

    invoke-virtual {v0}, LbS;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->a(Lve;)LbS;

    move-result-object v0

    invoke-virtual {v0, v1}, LbS;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvk;

    invoke-interface {v0, p1}, Lvk;->a(Lrw;)V

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->a(Lve;)LbS;

    move-result-object v0

    invoke-virtual {v0}, LbS;->notifyDataSetChanged()V

    .line 83
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Lvg;

    invoke-direct {p0, p1}, Lvf;->a(Lvg;)V

    return-void
.end method
