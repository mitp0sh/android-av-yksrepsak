.class public final LkX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "(([-\\w]+\\.)+(com|org|net|gov|mil|biz|info|mobi|name|aero|jobs|museum|travel|[a-zA-Z]{2,3}))(/\\S*)?\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, LkX;->a:Ljava/util/regex/Pattern;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 29
    iget-object v1, p0, LkX;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 32
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method
