.class public final Lrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 1510
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1507
    check-cast p1, Ljava/util/Locale;

    check-cast p2, Ljava/util/Locale;

    invoke-static {p1, p2}, Lrd;->a(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v0

    return v0
.end method
