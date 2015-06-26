.class public final LbX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/lang/String;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LbX;->a:Ljava/util/Map;

    .line 38
    iput-object p1, p0, LbX;->b:Ljava/lang/String;

    .line 39
    iput-object p2, p0, LbX;->c:Landroid/view/View;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, LbX;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 44
    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, LbX;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, LbX;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, LbX;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(LbX;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p1, LbX;->b:Ljava/lang/String;

    iput-object v0, p0, LbX;->b:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, LbX;->c:Landroid/view/View;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 60
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 61
    :cond_0
    instance-of v0, p1, LbX;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    check-cast p1, LbX;

    .line 65
    iget-object v0, p0, LbX;->b:Ljava/lang/String;

    iget-object v1, p1, LbX;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, LbX;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
