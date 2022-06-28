#import <Foundation/Foundation.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface LSApplicationWorkspace : NSObject
+ (LSApplicationWorkspace*)defaultWorkspace;
- (NSArray *)applicationsAvailableForHandlingURLScheme:(NSString *)scheme;
@end

@interface LSApplicationWorkspace (LSPrivate)
// - (BOOL)_LSPrivateDatabaseNeedsRebuild;
- (BOOL)_LSPrivateRebuildApplicationDatabasesForSystemApps:(BOOL)arg1 internal:(BOOL)arg2 user:(BOOL)arg3;
@end

int main(int argc, char** argv) {
	@autoreleasepool {
		LSApplicationWorkspace* workspace = [LSApplicationWorkspace defaultWorkspace];
		if (![workspace respondsToSelector:@selector(_LSPrivateRebuildApplicationDatabasesForSystemApps:internal:user:)]) {
			fputs("Incompatible\n", stderr);
		}
		if (![workspace _LSPrivateRebuildApplicationDatabasesForSystemApps:YES internal:YES user:YES]) {
			fputs("Failed\n", stderr);
		}
		return 0;
	}
}
