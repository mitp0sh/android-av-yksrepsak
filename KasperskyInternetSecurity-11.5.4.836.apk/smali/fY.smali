.class final LfY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga;


# static fields
.field private static final a:LfY;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, LfY;

    invoke-direct {v0}, LfY;-><init>()V

    sput-object v0, LfY;->a:LfY;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method public static a()LfY;
    .locals 1

    .prologue
    .line 249
    sget-object v0, LfY;->a:LfY;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method
