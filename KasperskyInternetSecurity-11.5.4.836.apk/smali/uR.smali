.class public abstract LuR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LuR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LuR;
    .locals 2

    .prologue
    .line 69
    sget-object v0, LuR;->a:LuR;

    if-nez v0, :cond_0

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 73
    new-instance v0, LuS;

    invoke-direct {v0}, LuS;-><init>()V

    sput-object v0, LuR;->a:LuR;

    .line 78
    :cond_0
    :goto_0
    sget-object v0, LuR;->a:LuR;

    return-object v0

    .line 75
    :cond_1
    new-instance v0, LuT;

    invoke-direct {v0}, LuT;-><init>()V

    sput-object v0, LuR;->a:LuR;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/net/Uri;)J
.end method

.method public abstract a(Landroid/content/Context;J)Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
.end method

.method public final a(Landroid/content/Context;Ljava/util/Vector;)Ljava/util/Set;
    .locals 5

    .prologue
    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 58
    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 60
    invoke-virtual {p0, p1, v3, v4}, LuR;->d(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 62
    :cond_0
    return-object v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Long;)Lqr;
    .locals 6

    .prologue
    .line 32
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, LuR;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, LuR;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 34
    new-instance v0, Lqr;

    const/4 v1, 0x2

    const v2, 0x7f02005c

    const v3, 0x7f02005d

    invoke-direct/range {v0 .. v5}, Lqr;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract a(Landroid/app/Activity;I)V
.end method

.method protected abstract b(Landroid/content/Context;J)Ljava/lang/String;
.end method

.method public abstract b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract c(Landroid/content/Context;J)Z
.end method

.method public abstract d(Landroid/content/Context;J)Ljava/util/Set;
.end method
