.class public interface abstract Laj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Laj;->a:[I

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Laj;->b:[[I

    return-void

    .line 23
    :array_0
    .array-data 4
        0x1e
        0xf
        0x7
        0x3
        0x2
        0x1
        0x0
    .end array-data

    .line 25
    :array_1
    .array-data 4
        0x1d
        0x10
    .end array-data

    :array_2
    .array-data 4
        0xe
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x4
    .end array-data
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lae;)V
.end method

.method public abstract a(Lay;)V
.end method
