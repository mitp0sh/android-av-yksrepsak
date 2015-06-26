.class public final LrY;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/kms/kmsshared/reports/EventResources$1;

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/EventResources$1;-><init>()V

    sput-object v0, LrY;->a:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/kms/kmsshared/reports/EventResources$2;

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/EventResources$2;-><init>()V

    sput-object v0, LrY;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(I)I
    .locals 3

    .prologue
    .line 94
    sget-object v0, LrY;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find title res id for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static b(I)I
    .locals 2

    .prologue
    .line 102
    sget-object v0, LrY;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 103
    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
